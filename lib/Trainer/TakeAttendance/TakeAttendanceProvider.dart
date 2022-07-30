import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sports_training/Trainer/TakeAttendance/TakeAttendance.dart';

class TakeAttendanceProvider with ChangeNotifier {
  var isAllAttendanceSelected = false;

  bool get getAllAttendanceSelected => isAllAttendanceSelected;

  String checkAllAttendance = '0';

  setAllAttendanceSelected(bool value, BuildContext context) {
    isAllAttendanceSelected = value;
    if (isAllAttendanceSelected == true) {
      checkAllAttendance = '1';
      print('value$value');
      print('checkCashOnDelivery$checkAllAttendance');

      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => TakeAttendance()));

    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => TakeAttendance()));
    }
    notifyListeners();
  }
}
