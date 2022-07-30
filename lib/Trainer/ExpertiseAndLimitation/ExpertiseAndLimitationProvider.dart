import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:sports_training/Trainer/TrainerDboard.dart';

class ExpertiseAndLimitationProvider with ChangeNotifier {
  //FOR EnROLLMENT NO.
  var stuEnroll = '';
  TextEditingController stuEnrollController = TextEditingController();
  TextEditingController get getEnrollController => stuEnrollController;
  setStuEnroll(String value) {
    stuEnroll = value;
    print('StudentEnroll === $stuEnroll');
  }
  //===========

  //FOR WEAKNESS
  var weakness = '';
  TextEditingController weaknessController = TextEditingController();
  TextEditingController get getWeaknessController => weaknessController;
  setWeakness(String value) {
    weakness = value;
    print('WEAKNESSS === $weakness');
  }
  //===========

  //FOR STRENGTH
  var strength = '';
  TextEditingController strengthController = TextEditingController();
  TextEditingController get getStrengthController => strengthController;
  setStrength(String value) {
    strength = value;
    print('Strength === $strength');
  }
  //===========

  // updaterecord
  updateRecord(BuildContext context) {
    if (stuEnroll.isEmpty || strength.isEmpty || weakness.isEmpty) {
      const snackBar = SnackBar(
        content: Text(
          'Please enter all fields',
          style: TextStyle(fontSize: 15, color: Color(0xffF36501)),
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      print('StudentEnroll === $stuEnroll');
      print('WEAKNESSS === $weakness');
      print('Strength === $strength');

      DatabaseReference postListRef =
          FirebaseDatabase.instance.ref("ExpertiseLimitations");
      DatabaseReference newPostRef = postListRef.push();

      newPostRef.set({
        "ExpertiseAndLimitation": {
          "Enrollmentno": stuEnroll,
          "Strength": strength,
          "Weakness": weakness,
        }
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => TrainerDboard()),
      );
      stuEnrollController.text = '';
      weaknessController.text = '';
      strengthController.text = '';
      setStuEnroll('');
      setWeakness('');
      setStrength('');
    }

    notifyListeners();
  }
}
