import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:push_notification_test/helpers/NotificationHelper.dart';

import '../../BaseController.dart';

class HomeController extends BaseController {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();


  @override
  void onReady() async {
    super.onReady();
    await NotificationHelper.initNotificationConfig();
    initMessaging();
  }

  void initMessaging() async  {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      Logger().w(message);
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                NotificationHelper.channel.id,
                NotificationHelper.channel.name,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher',
              ),
            ));
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      Logger().w(message);
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      if (notification != null && android != null) {
        Get.defaultDialog(
          title: notification.title ?? "null notification",
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(notification.body ?? "null body")],
            ),
          ),
        );
      }
    });
  }

  void showNotification() {
    flutterLocalNotificationsPlugin.show(
        0,
        "Testing",
        "How you doin ?",
        NotificationDetails(
            android: AndroidNotificationDetails(NotificationHelper.channel.id, NotificationHelper.channel.name,
                importance: Importance.high, color: Colors.blue, playSound: true, icon: '@mipmap/ic_launcher')));
  }
}
