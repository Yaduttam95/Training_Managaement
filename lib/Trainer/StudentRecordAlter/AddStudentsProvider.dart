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
  //FOR DOB
  var dob = '';
  TextEditingController DOBController = TextEditingController();
  TextEditingController get getDOBController => DOBController;
  setDOB(String value) {
    dob = value;
    print('DOB === $dob');
  }

  //FOR AGE
  var age = '';
  TextEditingController AgeController = TextEditingController();
  TextEditingController get getAgeController => AgeController;
  setAge(String value) {
    age = value;
    print('Age === $age');
  }

  //FOR ADDRESS
  var address = '';
  TextEditingController AddressController = TextEditingController();
  TextEditingController get getAddressController => AddressController;
  setAddress(String value) {
    address = value;
    print('Address === $address');
  }

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

  //FOR PINCODE
  var pincode = '';
  TextEditingController PinCodeController = TextEditingController();
  TextEditingController get getPinCodeController => PinCodeController;
  setPinCode(String value) {
    pincode = value;
    print('PinCode === $pincode');
  }

  //FOR state
  var statte = '';
  TextEditingController StatteController = TextEditingController();
  TextEditingController get getStatteController => StatteController;
  setStatte(String value) {
    statte = value;
    print('state === $statte');
  }

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
        stuMob.isEmpty ||
        dob.isEmpty ||
        age.isEmpty ||
        address.isEmpty ||
        pincode.isEmpty ||
        statte.isEmpty) {
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
      ////
      print('DOB=== $dob');
      print('AGE=== $age');
      print('Address=== $address');
      print('PINCODE=== $pincode');
      print('State==== $statte');

      DatabaseReference postListRef = FirebaseDatabase.instance.ref("Students");
      DatabaseReference newPostRef = postListRef.push();

      newPostRef.set({
        "student": {
          "Name": stuName,
          "Sports": stuSports,
          "Gender": stuGender,
          "Mob": stuMob,
          "Enroll": stuEnroll,
          "DOB": dob,
          "AGE": age,
          "Address": address,
          "PINCODE": pincode,
          "State": statte,
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
      DOBController.text = '';
      AgeController.text = '';
      AddressController.text = '';
      PinCodeController.text = '';
      StatteController.text = '';
      setDOB('');
      setAge('');
      setAddress('');
      setPinCode('');
      setStatte('');
      setStuEnroll('');
      setStuMob('');
      setStuGender('');
      setStuSports('');
      setStuName('');
    }

    notifyListeners();
  }
}
