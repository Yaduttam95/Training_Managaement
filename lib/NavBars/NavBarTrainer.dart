import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sports_training/Trainer/EventsRecord/ViewAllEvent.dart';

import '../Trainer/EventsRecord/EventsRecord.dart';
import '../Trainer/ExpertiseAndLimitation/ExpertiseAndLimitation.dart';
import '../Trainer/PracticeTask/AddPracticeTask.dart';
import '../Trainer/StudentRecordAlter/AlterStudent.dart';
import '../Trainer/TakeAttendance/TakeAttendance.dart';
import '../Trainer/TrainingDetails/AddTrainingDetails.dart';

class NavBarTrainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color(0xffF36501),
        child: Stack(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: ListView(
              padding: EdgeInsets.all(0),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 17),
                  ///////////////////
                ),
                ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 25,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Alter Students Record',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          color: Colors.white),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                AlterStudent()))),
                ListTile(
                  leading: Icon(
                    Icons.check_circle,
                    size: 25,
                    color: Colors.white,
                  ),
                  title: Text('Attendance',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          color: Colors.white)),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => TakeAttendance())),
                ),
                ListTile(
                  leading: Icon(
                    Icons.task,
                    size: 25,
                    color: Colors.white,
                  ),
                  title: Text('Practice Task',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          color: Colors.white)),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              AddPracticeTask())),
                ),
                ListTile(
                  leading: Icon(
                    Icons.model_training,
                    size: 25,
                    color: Colors.white,
                  ),
                  title: Text('Training Details',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          color: Colors.white)),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              AddTrainingDetails())),
                ),
                ListTile(
                  leading: Icon(
                    Icons.travel_explore_outlined,
                    size: 25,
                    color: Colors.white,
                  ),
                  title: Text('Expertise and Limitation',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          color: Colors.white)),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ExpertiseAndLimitation())),
                ),
                ListTile(
                  leading: Icon(
                    Icons.event_available,
                    size: 25,
                    color: Colors.white,
                  ),
                  title: Text('Events',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          color: Colors.white)),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ViewAllEvent())),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0, bottom: 10),
            child: Container(
                height: 125,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 30, right: 120, top: 70, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //borderRadius: BorderRadius.circular(50)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            padding: EdgeInsets.only(right: 0),
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(35)),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(right: 50, top: 5),
                              child: Text(
                                "Trainer",
                                style: TextStyle(
                                    fontFamily: 'Lato-1', fontSize: 12),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(right: 10, top: 2),
                                child: Text(
                                  "Ajay Sharma",
                                  style: TextStyle(
                                      fontFamily: 'Lato-1',
                                      fontSize: 15,
                                      color: Color(0xffF36501)),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    ///////////////////////////////////////////////////
                  ),
                )),
          ),
          Padding(
              padding: EdgeInsets.only(top: 500, left: 25),
              child: Container(
                height: 131,
                width: 250,
                decoration: BoxDecoration(
                    //color: Colors.yellow,
                    // image: DecorationImage(
                    //   fit: BoxFit.fill,
                    //   //image: AssetImage("assets/images2/mask.png"),
                    // ),
                    ),
              ))
        ]));
  }
}
