import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:sports_training/Trainer/StudentRecordAlter/DeleteStudent.dart';

import 'AlterStudent.dart';

class DeleteStudentProvider with ChangeNotifier {
  //FOR EnROLLMENT NO.
  var stuEnroll = '';
  TextEditingController stuEnrollController = TextEditingController();
  TextEditingController get getEnrollController => stuEnrollController;
  setStuEnroll(String value) {
    stuEnroll = value;
    print('StudentEnroll === $stuEnroll');
  }
  //===========

  //FOR NAME
  var stuName = '';
  TextEditingController StuNameController = TextEditingController();
  TextEditingController get getNameController => StuNameController;
  setStuName(String value) {
    stuName = value;
    print('StudentName === $stuName');
  }
  //===========

  // DELETE Student
  DeleteStudent(BuildContext context) {
    if (stuEnroll.isEmpty || stuName.isEmpty) {
      const snackBar = SnackBar(
        content: Text(
          'Please enter all fields',
          style: TextStyle(fontSize: 15, color: Color(0xffF36501)),
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      print('Name=== $stuName');
      print('Enroll==== $stuEnroll');

      // DatabaseReference postListRef = FirebaseDatabase.instance.ref("Students");
      // Future<void> newPostRef = postListRef.remove();
      final recentPostsRef =
          FirebaseDatabase.instance.ref('Students/').equalTo(stuEnroll);
      print('RECENT POST REF === $recentPostsRef');
      // recentPostsRef.remove();
      // newPostRef.remove();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => AlterStudent()),
      );
      StuNameController.text = '';

      stuEnrollController.text = '';
      setStuEnroll('');

      setStuName('');
    }
  }
}
