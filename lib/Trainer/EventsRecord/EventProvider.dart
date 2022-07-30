import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:sports_training/Trainer/EventsRecord/ViewAllEvent.dart';

class EventProvider with ChangeNotifier {
  //FOR DATE
  var eveDate = '';
  TextEditingController eveDateController = TextEditingController();
  TextEditingController get getDateController => eveDateController;
  setEveDate(String value) {
    eveDate = value;
    print('eventdate === $eveDate');
  }
  //===========

  //FOR NUMBER
  var eveNumber = '';
  TextEditingController eveNumberController = TextEditingController();
  TextEditingController get getNumberController => eveNumberController;
  setEveNumber(String value) {
    eveNumber = value;
    print('eventNumber === $eveNumber');
  }
  //===========

  //FOR NAME
  var eveName = '';
  TextEditingController eveNameController = TextEditingController();
  TextEditingController get getNameController => eveNameController;
  setEveName(String value) {
    eveName = value;
    print('eventName === $eveName');
  }
  //===========

  //FOR TYPE
  var eveType = '';
  TextEditingController eveTypeController = TextEditingController();
  TextEditingController get getEveTypeController => eveTypeController;
  setEveType(String value) {
    eveType = value;
    print('StudentGender === $eveType');
  }

//===========

  // ADD EVENT
  addEvent(BuildContext context) {
    if (eveDate.isEmpty ||
        eveName.isEmpty ||
        eveNumber.isEmpty ||
        eveType.isEmpty) {
      const snackBar = SnackBar(
        content: Text(
          'Please enter all fields',
          style: TextStyle(fontSize: 15, color: Color(0xffF36501)),
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      print('eventDate === $eveDate');
      print('eventName === $eveName');
      print('eventNo === $eveNumber');
      print('eventType === $eveType');

      DatabaseReference postListRef = FirebaseDatabase.instance.ref("Events");
      DatabaseReference newPostRef = postListRef.push();

      newPostRef.set({
        "DATA": {
          "Date": eveDate,
          "Event_Name": eveName,
          "Event_No": eveNumber,
          "Event_Type": eveType,
        }
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => ViewAllEvent()),
      );
      eveDateController.text = '';
      eveNumberController.text = '';
      eveNameController.text = '';
      eveTypeController.text = '';
      setEveDate('');
      setEveNumber('');
      setEveName('');
      setEveType('');
    }

    notifyListeners();
  }
}
