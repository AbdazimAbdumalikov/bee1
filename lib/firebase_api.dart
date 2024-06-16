import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();
    final fCMToken = await _firebaseMessaging.getToken();
    print("TOKEN: $fCMToken");
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  }
}

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  print('Got a message whilst in the foreground!');
  if (message.notification != null) {
    print('Notification Title: ${message.notification?.title}');
    print('Notification Body: ${message.notification?.body}');
    print("Playload: ${message.data}");
  }
}