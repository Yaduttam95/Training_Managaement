import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:sports_training/Trainer/StudentRecordAlter/DeleteStudent.dart';

class EditStudentDetailsProvider with ChangeNotifier {
  //FOR EnROLLMENT NO.
  var stuEnroll = '';
  TextEditingController stuEnrollController = TextEditingController();
  TextEditingController get getEnrollController => stuEnrollController;
  setStuEnroll(String value) {
    stuEnroll = value;
    print('StudentEnroll === $stuEnroll');
  }
  //===========

  //FOR Detail
  var stuDetail = '';
  TextEditingController stuDetailController = TextEditingController();
  TextEditingController get getGenderController => stuDetailController;
  setStuDetail(String value) {
    stuDetail = value;
    print('StudentDetail === $stuDetail');
  }
  //===========

  //FOR PRECORD
  var PRecord = '';
  TextEditingController PRecordController = TextEditingController();
  TextEditingController get getPRecordController => PRecordController;
  setPRecord(String value) {
    PRecord = value;
    print('PreviousRecord === $PRecord');
  }
  //===========

  //FOR NRECORD
  var NRecord = '';
  TextEditingController NRecordController = TextEditingController();
  TextEditingController get getNRecordController => NRecordController;
  setNRecord(String value) {
    NRecord = value;
    print('NewRecord === $NRecord');
  }
  //===========
}
