import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:sports_training/Trainer/PracticeTask/AddPracticeTask.dart';

import '../TrainerDboard.dart';

class AddPracticetaskProvider with ChangeNotifier {
  //FOR DATE
  var todayDate = '';
  TextEditingController todayDateController = TextEditingController();
  TextEditingController get getDateController => todayDateController;
  setTodayDate(String value) {
    todayDate = value;
    print('Todaydate === $todayDate');
  }

  //////=========
  ///
  //FOR Name
  var exeName = '';
  TextEditingController exeNameController = TextEditingController();
  TextEditingController get getNameController => exeNameController;
  setexeName(String value) {
    exeName = value;
    print('exeName === $exeName');
  }

  //////=========
  ///
  //FOR Reps
  var exeReps = '';
  TextEditingController exeRepsController = TextEditingController();
  TextEditingController get getRepsController => exeRepsController;
  setexeReps(String value) {
    exeReps = value;
    print('exeReps === $exeReps');
  }

  //////=========
  // ADD PRACTICE TASK
  AddPracticeTask(BuildContext context) {
    if (todayDate.isEmpty || exeName.isEmpty || exeReps.isEmpty) {
      const snackBar = SnackBar(
        content: Text(
          'Please enter all fields',
          style: TextStyle(fontSize: 15, color: Color(0xffF36501)),
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      print('Date === $todayDate');
      print('Exercise Name === $exeName');
      print('eventNo === $exeReps');

      DatabaseReference postListRef =
          FirebaseDatabase.instance.ref("Practice_Task");
      DatabaseReference newPostRef = postListRef.push();

      newPostRef.set({
        "DATA": {
          "Date": todayDate,
          "Exercise Name": exeName,
          "Reps": exeReps,
        }
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => TrainerDboard()),
      );
      todayDateController.text = '';
      exeRepsController.text = '';
      exeNameController.text = '';
      setTodayDate('');
      setexeReps('');
      setexeName('');
    }
    notifyListeners();
  }
}
