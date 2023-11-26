// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pomodoro/firebase_options.dart';
// import 'dart:async';
// import 'dart:convert';
// import 'dart:developer';
import 'package:pomodoro/provider/task_provider.dart';
import 'package:pomodoro/widgets/task_widget.dart';
import 'package:provider/provider.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // FirebaseMessaging messaging = FirebaseMessaging.instance;
  // await messaging.requestPermission(
  //     alert: true,
  //     announcement: false,
  //     badge: true,
  //     carPlay: false,
  //     criticalAlert: false,
  //     sound: true);
  // final token = await messaging.getToken(
  //     vapidKey:
  //         'BNPMzd33WtNT831VZBviPYVyBMbm23A0XF0lCCqiJBCfsAYEVa6O8PiJBes0z0ec3V_-XOJXYyOJ42a_qDMd_EU');
  // print('token: $token');
  // sendPushMessageToWeb() async {
  //   final _token = await messaging.getToken(
  //       vapidKey:
  //           'BNPMzd33WtNT831VZBviPYVyBMbm23A0XF0lCCqiJBCfsAYEVa6O8PiJBes0z0ec3V_-XOJXYyOJ42a_qDMd_EU');

  //   if (_token == null) {
  //     print('Unable to send FCM message, no token exists.');
  //     return;
  //   }
  //   try {
  //     await http
  //         .post(
  //           Uri.parse('https://fcm.googleapis.com/fcm/send'),
  //           headers: <String, String>{
  //             'Content-Type': 'application/json',
  //             'Authorization':
  //                 'key=BNPMzd33WtNT831VZBviPYVyBMbm23A0XF0lCCqiJBCfsAYEVa6O8PiJBes0z0ec3V_-XOJXYyOJ42a_qDMd_EU'
  //           },
  //           body: json.encode({
  //             'to': _token,
  //             'message': {
  //               'token': _token,
  //             },
  //             "notification": {
  //               "title": "Push Notification",
  //               "body": "Firebase  push notification"
  //             }
  //           }),
  //         )
  //         .then((value) => print(value.body));
  //     print('FCM request for web sent!');
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  // sendPushMessageToWeb();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return ChangeNotifierProvider(
            create: (context) => TaskProvider(),
            child: MaterialApp(
              title: 'Pomodoro',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.purple,
              ),
              home: const TaskWidget(),
            ),
          );
        });
  }
}
