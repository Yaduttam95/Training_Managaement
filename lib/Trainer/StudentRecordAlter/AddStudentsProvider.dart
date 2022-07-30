import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:sports_training/Trainer/StudentRecordAlter/AddStudents.dart';

import 'AlterStudent.dart';

class AddStudentsProvider with ChangeNotifier {
  //FOR NAME
  var stuName = '';
  TextEditingController StuNameController = TextEditingController();
  TextEditingController get getNameController => StuNameController;
  setStuName(String value) {
    stuName = value;
    print('StudentName === $stuName');
  }
  //===========

  //FOR SPORTS
  var stuSports = '';
  TextEditingController stuSportsController = TextEditingController();
  TextEditingController get getSportsController => stuSportsController;
  setStuSports(String value) {
    stuSports = value;
    print('StudentSports === $stuSports');
  }
  //===========

  //FOR GENDER
  var stuGender = '';
  TextEditingController stuGenderController = TextEditingController();
  TextEditingController get getGenderController => stuGenderController;
  setStuGender(String value) {
    stuGender = value;
    print('StudentGender === $stuGender');
  }
  //===========

  //FOR MOB
  var stuMob = '';
  TextEditingController stuMobController = TextEditingController();
  TextEditingController get getMobController => stuMobController;
  setStuMob(String value) {
    stuMob = value;
    print('StudentMob === $stuMob');
  }
  //===========

  //FOR EnROLLMENT NO.
  var stuEnroll = '';
  TextEditingController stuEnrollController = TextEditingController();
  TextEditingController get getEnrollController => stuEnrollController;
  setStuEnroll(String value) {
    stuEnroll = value;
    print('StudentEnroll === $stuEnroll');
  }
  //===========

// ADD Student
  AddStudent(BuildContext context) {
    if (stuEnroll.isEmpty ||
        stuName.isEmpty ||
        stuSports.isEmpty ||
        stuGender.isEmpty ||
        stuMob.isEmpty) {
      const snackBar = SnackBar(
        content: Text(
          'Please enter all fields',
          style: TextStyle(fontSize: 15, color: Color(0xffF36501)),
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      print('Name=== $stuName');
      print('Sports=== $stuSports');
      print('Gender=== $stuGender');
      print('Mob=== $stuMob');
      print('Enroll==== $stuEnroll');

      DatabaseReference postListRef = FirebaseDatabase.instance.ref("Students");
      DatabaseReference newPostRef = postListRef.push();

      newPostRef.set({
        "student": {
          "Name": stuName,
          "Sports": stuSports,
          "Gender": stuGender,
          "Mob": stuMob,
          "Enroll": stuEnroll,
        }
      });
      
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => AlterStudent()),
      );
      
      StuNameController.text = '';
      stuSportsController.text = '';
      stuGenderController.text = '';
      stuMobController.text = '';
      stuEnrollController.text = '';
      setStuEnroll('');
      setStuMob('');
      setStuGender('');
      setStuSports('');
      setStuName('');
    }

    notifyListeners();
  }
}
