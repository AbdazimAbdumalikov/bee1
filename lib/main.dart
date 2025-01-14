import 'package:europharm_flutter/firebase_options.dart';
import 'package:europharm_flutter/generated/l10n.dart';
import 'package:europharm_flutter/main/dependency_initializer/dependency_initializer.dart';
import 'package:europharm_flutter/main/dependency_provider/dependency_provider.dart';
import 'package:europharm_flutter/main/login_bloc/login_bloc.dart';
import 'package:europharm_flutter/main/top_level_blocs/top_level_blocs.dart';
import 'package:europharm_flutter/managers/user_store.dart';
import 'package:europharm_flutter/network/dio_wrapper/dio_wrapper.dart';
import 'package:europharm_flutter/network/repository/global_repository.dart';
import 'package:europharm_flutter/network/repository/hive_repository.dart';
import 'package:europharm_flutter/network/services/firebase_api.dart';
import 'package:europharm_flutter/network/services/network_service.dart';
import 'package:europharm_flutter/network/tokens_repository/tokens_repository.dart';
import 'package:europharm_flutter/screens/notifications_screen/ui/firebase_messaging/firebase_messaging.dart';
import 'package:europharm_flutter/screens/notifications_screen/ui/notification_firebase.dart';
import 'package:europharm_flutter/styles/color_palette.dart';
import 'package:europharm_flutter/utils/scroll_glow_disable.dart';
import 'package:europharm_flutter/widgets/dynamic_link_layer/dynamic_link_layer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

const String baseUrl = 'http://api-tms.bee1.kz/api/v2/';

final navigatorKey = GlobalKey<NavigatorState>();

String get projectBaseUrl {
  if (kDebugMode) return baseUrl;
  return "http://api-tms.bee1.kz/api/v2/";
}

void main() async {
  ///Global managers initialization
  Future<bool> _initialize(BuildContext context) async {
    try {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      // WidgetsFlutterBinding.ensureInitialized();
      // context.read<ErrorHandler>().initialize(S.of(context));
      final docDir = await getApplicationDocumentsDirectory();
      Hive.init(docDir.path);
      // await context.read<SecureStorage>().init();
      await context.read<HiveRepository>().init();
      await context.read<UserStore>().init(context.read<HiveRepository>());
      await context
          .read<TokensRepository>()
          .init(context.read<HiveRepository>());
      // await context.read<FirebaseMessagingRepository>().init();
      await context.read<DioWrapper>().init(
          baseURL: projectBaseUrl,
          tokensRepository: context.read<TokensRepository>(),
          globalRepository: context.read<GlobalRepository>(),
          loginBloc: context.read<LoginBloc>());
      context.read<NetworkService>().init(context.read<DioWrapper>());
      context.read<GlobalRepository>().init(
            context.read<NetworkService>(),
            context.read<HiveRepository>(),
          );
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      final fcmToken = await FirebaseMessaging.instance.getToken();
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      await FirebaseApi().initNotificatons();
      // Вывод координат в консоль
      print('Токен: ${fcmToken}');
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return true;
  }

  runApp(
    RestartWidget(
      child: DependenciesProvider(
        child: TopLevelBlocs(
          child: MaterialApp(
            builder: (context, child) {
              return ScrollConfiguration(
                behavior: DisableGlowScrollBehavior(),
                child: child!,
              );
            },
            title: 'Arba',
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: const Locale('zh'),
            supportedLocales: S.delegate.supportedLocales,
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
              ),
              scaffoldBackgroundColor: ColorPalette.white,
              fontFamily: 'ProductSans',
              textSelectionTheme: const TextSelectionThemeData().copyWith(
                cursorColor: ColorPalette.black,
              ),
            ),
            home: DependenciesInitializer(
              loadingIndicatorScreen: const Scaffold(
                backgroundColor: Colors.white, // Colors.orange, /// FIXME
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              initializer: _initialize,
              child: const MainAuthorization(),
            ),
            routes: {
              '/notification_firebase': (context) =>
                  const NotificationFirebase(),
            },
          ),
        ),
      ),
    ),
  );
}

class MainAuthorization extends StatelessWidget {
  const MainAuthorization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is AuthorizedState) {
          // Navigator.of(context).pushAndRemoveUntil(
          //     MaterialPageRoute(builder: (_) => MainAuthorization()),
          //     (route) => route.isFirst);
          // Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
          Navigator.of(context).popUntil((route) => route.isFirst);
        }
      },
      buildWhen: (p, c) =>
          c is LoadingLoginState ||
          c is UnauthorizedState ||
          c is AuthorizedState,
      builder: (context, state) {
        if (state is LoadingLoginState) {
          return const Material(
            child: Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            ),
          );
        }
        if (state is UnauthorizedState) {
          return const Application(
            isAuthenticated: false,
            key: ValueKey(0),
          );
        }
        if (state is AuthorizedState) {
          return const Application(
            isAuthenticated: true,
            key: ValueKey(1),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class Application extends StatelessWidget {
  final bool isAuthenticated;

  const Application({
    required this.isAuthenticated,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DynamicLinkLayer(isAuthenticated: isAuthenticated);
  }
}

class RestartWidget extends StatefulWidget {
  const RestartWidget({Key? key, required this.child}) : super(key: key);

  final Widget child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_RestartWidgetState>()?.restartApp();
  }

  @override
  State<RestartWidget> createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}
