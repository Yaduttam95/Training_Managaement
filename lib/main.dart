import 'package:flutter/material.dart';
import 'MyApp.dart';
import 'Trainer/EventsRecord/EventProvider.dart';
import 'Trainer/StudentRecordAlter/AddStudentsProvider.dart';
import 'Trainer/StudentRecordAlter/DeleteStudentProvider.dart';
import 'Trainer/StudentRecordAlter/EditStudentDetailsProvider.dart';
import 'Trainer/TakeAttendance/TakeAttendanceProvider.dart';
import 'Trainer/TrainerRegister/TrainerPageProvider.dart';
import 'login/AllLogin_provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AllLogin_provider()),
        ChangeNotifierProvider(create: (_) => EventProvider()),
        ChangeNotifierProvider(create: (_) => TrainerPageProvider()),
        ChangeNotifierProvider(create: (_) => TakeAttendanceProvider()),
        ChangeNotifierProvider(create: (_) => AddStudentsProvider()),
        ChangeNotifierProvider(create: (_) => DeleteStudentProvider()),
        ChangeNotifierProvider(create: (_) => EditStudentDetailsProvider()),
      ],
      child: const MyApp(),
    ),
  );
}
