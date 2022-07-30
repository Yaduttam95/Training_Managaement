import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:sports_training/Trainer/EventsRecord/ViewAllEvent.dart';
import 'package:sports_training/Trainer/TrainerDboard.dart';

class AddTrainingDetailsProvider with ChangeNotifier {
  //FOR DATE
  var todayDate = '';
  TextEditingController todayDateController = TextEditingController();
  TextEditingController get getDateController => todayDateController;
  setTodayDate(String value) {
    todayDate = value;
    print('Todaydate === $todayDate');
  }

  //////=========
  //FOR ExeName
  var exeName = '';
  TextEditingController ExeNameController = TextEditingController();
  TextEditingController get getExeNameController => ExeNameController;
  setexeName(String value) {
    exeName = value;
    print('exeName === $exeName');
  }

  ////==========
  //FOR ExeName
  var exeReps = '';
  TextEditingController ExeRepsController = TextEditingController();
  TextEditingController get getExeRepsController => ExeRepsController;
  setexeReps(String value) {
    exeReps = value;
    print('exeReps === $exeReps');
  }

  ///////==========
  // ADD TRAINING DETAILS
  AddTrainingDetail(BuildContext context) {
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
          FirebaseDatabase.instance.ref("Trainer_training_Details");
      DatabaseReference newPostRef = postListRef.push();

      newPostRef.set({
        "DETAILS": {
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
      ExeRepsController.text = '';
      ExeNameController.text = '';
      setTodayDate('');
      setexeReps('');
      setexeName('');
    }
    notifyListeners();
  }
}
