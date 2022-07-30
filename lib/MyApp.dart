import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sports_training/Splash.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
// import 'firebase_options.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sports Training',
      home: Splash(),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return AppView();
  // }
}

// class AppView extends StatefulWidget {
//   @override
//   _AppViewState createState() => _AppViewState();
// }

// class _AppViewState extends State<AppView> {
//   final _navigatorKey = GlobalKey<NavigatorState>();

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();

//     initializeFlutter();
//   }

//   initializeFlutter() async {
//     await Firebase.initializeApp(
//       options: DefaultFirebaseOptions.currentPlatform,
//     );
//     var messaging = FirebaseMessaging.instance;

// // use the returned token to send messages to users from your custom server
//     var settings = await messaging.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );

//     print('User granted permission: ${settings.authorizationStatus}');

//     var token = await messaging.getToken();
//     print(token);
//     print('Firebase_Token===>$token');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Sports Training',
//       home: Splash(),
//     );
//   }
// }
