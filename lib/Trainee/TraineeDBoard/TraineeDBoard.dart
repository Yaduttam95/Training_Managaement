import 'package:flutter/material.dart';
import 'package:sports_training/Trainee/TTrainingDetails/TTrainingDetails.dart';
import 'package:sports_training/Trainee/TraineeProfile/TraineeProfile.dart';

import '../../Trainer/StudentRecordAlter/AddStudents.dart';
import '../../Trainer/StudentRecordAlter/DeleteStudent.dart';
import '../../Trainer/StudentRecordAlter/EditStudentDetails.dart';
import '../ViewTasks/ViewTasks.dart';

class TraineeDBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Color(0xffFEFDF5),
              width: MediaQuery.of(context).size.width,
              height: 120.0,
              child: Container(
                padding: EdgeInsets.only(top: 50, left: 5),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 235, right: 10),
                      child: Row(children: <Widget>[
                        Container(
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
                        Column(
                          children: <Widget>[
                            Container(
                              padding:
                                  EdgeInsets.only(right: 40, top: 17, left: 5),
                              child: Text(
                                "Student",
                                style: TextStyle(
                                    fontFamily: 'Lato-1', fontSize: 12),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(left: 3, top: 2),
                                child: Text(
                                  "Ravi Varma",
                                  style: TextStyle(
                                      fontFamily: 'Lato-1',
                                      fontSize: 15,
                                      color: Color(0xff000071)),
                                ),
                              ),
                            )
                          ],
                        )
                      ]),
                    ),
                    ////////////////////
                  ],
                ),
              ),
            ),
            Container(
              height: 75,
              width: double.infinity,
              decoration: BoxDecoration(
                //color: Colors.red,
                image: DecorationImage(
                  image: AssetImage("assets/images2/Group.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            /////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                  child: Container(
                child: Text(
                  "What Do You Wanna do Now?",
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                ),
              )),
            ),
            /////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                          child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Container(
                              height: 80,
                              width: 105,
                              decoration: BoxDecoration(
                                  color: Color(0xff000071),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 37.5),
                            child: Container(
                              height: 5,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xffF4C29F),
                                  borderRadius: BorderRadius.circular(2)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 3, left: 15),
                            child: Center(
                              child: Icon(
                                Icons.remove_red_eye,
                                size: 77,
                                color: Color.fromARGB(104, 234, 232, 232),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 7, left: 3, right: 1),
                            child: Container(
                              height: 70,
                              width: 100,
                              //color: Colors.amber,
                              child: Center(
                                child: Text(
                                  "View Practice Task",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => ViewTasks())),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                          child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Container(
                              height: 80,
                              width: 105,
                              decoration: BoxDecoration(
                                  color: Color(0xff000071),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 37.5, top: 79),
                            child: Container(
                              height: 5,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xffF4C29F),
                                  borderRadius: BorderRadius.circular(2)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 3, left: 14),
                            child: Icon(
                              Icons.model_training,
                              size: 77,
                              color: Color.fromARGB(104, 234, 232, 232),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 2, left: 2),
                              child: Container(
                                height: 70,
                                width: 100,
                                //color: Colors.amber,
                                child: Center(
                                  child: Text(
                                    "Add Training Details",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ))
                        ],
                      )),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                TTrainingDetails())),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 7.5),
                      child: Container(
                          child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Container(
                              height: 80,
                              width: 105,
                              decoration: BoxDecoration(
                                  color: Color(0xff000071),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 37.5),
                            child: Container(
                              height: 5,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xffF4C29F),
                                  borderRadius: BorderRadius.circular(2)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 3, left: 14),
                            child: Icon(
                              Icons.person_outline,
                              size: 77,
                              color: Color.fromARGB(104, 234, 232, 232),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 2, left: 2),
                              child: Container(
                                height: 70,
                                width: 100,
                                //color: Colors.amber,
                                child: Center(
                                  child: Text(
                                    "View Profile",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ))
                        ],
                      )),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                TraineeProfile())),
                  ),
                ],
              ),
            ),
            ////////////////////////////////
          ],
        ),
      ),
    );
  }
}
