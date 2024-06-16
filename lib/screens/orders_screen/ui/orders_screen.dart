import 'dart:async';

import 'package:dotted_line/dotted_line.dart';
import 'package:europharm_flutter/generated/l10n.dart';
import 'package:europharm_flutter/network/models/order_dto.dart';
import 'package:europharm_flutter/network/models/user_dto.dart';
import 'package:europharm_flutter/network/repository/global_repository.dart';
import 'package:europharm_flutter/screens/notifications_screen/ui/notifications_page.dart';
import 'package:europharm_flutter/screens/order_card/ui/order_detail_page.dart';
import 'package:europharm_flutter/screens/orders_screen/bloc/orders_bloc.dart';
import 'package:europharm_flutter/screens/orders_screen/ui/all_orders_screen.dart';
import 'package:europharm_flutter/styles/color_palette.dart';
import 'package:europharm_flutter/styles/text_styles.dart';
import 'package:europharm_flutter/utils/app_router.dart';
import 'package:europharm_flutter/widgets/app_bottom_sheets/app_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:logging/logging.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<LiquidPullToRefreshState> _refreshIndicatorKey =
  GlobalKey<LiquidPullToRefreshState>();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: ColorPalette.background,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    splashRadius: 30,
                    onPressed: () {
                      AppRouter.push(
                        context,
                        const NotificationsPage(),
                        rootNavigator: true,
                      );
                    },
                    icon: SvgPicture.asset(
                      "assets/images/svg/notifications.svg",
                      color: ColorPalette.main,
                    ),
                  ),
                ),
                TabBar(
                  controller: _tabController,
                  labelColor: ColorPalette.main,
                  unselectedLabelColor: ColorPalette.commonGrey,
                  indicatorColor: ColorPalette.main,
                  tabs: const [
                    Tab(text: "Все заказы"),
                    Tab(text: "Мои заказы"),
                  ],
                ),
                Expanded(
                  child: BlocConsumer<OrdersBloc, OrdersState>(
                    buildWhen: (p, c) => c is StateLoadDataOrdersScreen,
                    listener: (context, state) {
                      if (state is OrdersStateLoading) {
                        context.loaderOverlay.show();
                      } else {
                        context.loaderOverlay.hide();
                      }
                      if (state is StateOrdersScreenError) {
                        showAppDialog(
                          context,
                          body: state.error.message,
                        );
                      }
                    },
                    builder: (context, state) {
                      if (state is StateLoadDataOrdersScreen) {
                        return TabBarView(
                          controller: _tabController,
                          children: [
                            AllOrdersScreen(),
                            _buildOrderList(context, state.orders),
                          ],
                        );
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOrderList(BuildContext context, List<OrderDTO> orders) {
    return Column(
      children: [
        Expanded(
          child: (orders.isEmpty)
              ? LiquidPullToRefresh(
            color: ColorPalette.background,
            backgroundColor: ColorPalette.main,
            key: _refreshIndicatorKey,
            onRefresh: _handleRefresh,
            showChildOpacityTransition: false,
            child: ListView(
              shrinkWrap: true,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Center(
                  child: Text(
                    S.of(context).no_orders,
                    style: ProjectTextStyles.ui_16Medium.copyWith(
                      color: ColorPalette.commonGrey,
                    ),
                  ),
                ),
              ],
            ),
          )
              : LiquidPullToRefresh(
            color: ColorPalette.background,
            backgroundColor: ColorPalette.main,
            key: _refreshIndicatorKey,
            onRefresh: _handleRefresh,
            showChildOpacityTransition: false,
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.only(bottom: 100),
              itemCount: orders.length,
              itemBuilder: (context, index) {
                return _OrderItemWidget(
                  order: orders[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _handleRefresh() async {
    BlocProvider.of<OrdersBloc>(context).add(
      EventLoadOrdersByCities(), // Передайте cityId, если нужно
    );
    final Completer<void> completer = Completer<void>();

    Timer(const Duration(seconds: 1), () {
      completer.complete();
    });

    return completer.future;
  }
}

class _OrderItemWidget extends StatelessWidget {
  final OrderDTO order;

  const _OrderItemWidget({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: InkWell(
        onTap: () {
          AppRouter.push(
            context,
            OrderDetailPage(
              order: order,
            ),
            rootNavigator: true,
          );
        },
        child: Container(
          padding: const EdgeInsets.only(
              bottom: 15.0, top: 15.0, left: 15.0, right: 15.0),
          decoration: BoxDecoration(
            color: ColorPalette.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Дата выезда",
                    style: ProjectTextStyles.ui_12Medium
                        .copyWith(color: ColorPalette.commonGrey),
                  ),
                  Text(
                    order.startDate != null
                        ? DateFormat("dd MMMM, HH:mm").format(order.startDate!)
                        : "",
                    style: ProjectTextStyles.ui_12Medium
                        .copyWith(color: ColorPalette.commonGrey),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      '0000000${order.id}',
                      style: ProjectTextStyles.ui_20Medium,
                    ),
                  ),
                  if (order.status?.toLowerCase() == "accepted" ||
                      order.status?.toLowerCase() == "in_process" ||
                      order.status?.toLowerCase() == "stopped")
                    Container(
                      decoration: BoxDecoration(
                        color: ColorPalette.green,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        "Текущий Заказ",
                        style: ProjectTextStyles.ui_10Regular.copyWith(
                          color: ColorPalette.white,
                        ),
                      ),
                    ),
                ],
              ),
              const Divider(
                thickness: 1,
                color: ColorPalette.lightGrey,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: order.status?.toLowerCase() == "accepted" ||
                          order.status?.toLowerCase() == "in_process" ||
                          order.status?.toLowerCase() == "stopped"
                          ? ColorPalette.main
                          : ColorPalette.grey400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset("assets/images/svg/orders_geo.svg"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        order.from ?? "Нет данных",
                        style: ProjectTextStyles.ui_16Medium,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: DottedLine(
                  direction: Axis.vertical,
                  dashColor: ColorPalette.commonGrey,
                  lineLength: 25,
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: ColorPalette.lightGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(
                      "assets/images/svg/orders_geo_done.svg",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        order.to ?? "Нет данных",
                        style: ProjectTextStyles.ui_16Medium,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
                color: ColorPalette.lightGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
