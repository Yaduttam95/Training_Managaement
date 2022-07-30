import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../NavBars/NavBarTrainer.dart';

import 'AddStudents.dart';
import 'DeleteStudent.dart';
import 'EditStudentDetails.dart';

class AlterStudent extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    drawer:
    NavBarTrainer();
    return Scaffold(
      key: _scaffoldKey,
      drawer: new NavBarTrainer(),
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
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 20,
                      ),
                      onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                    ),
                    Text(
                      "Alter Student Details",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins'),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30, right: 20),
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
                              padding: EdgeInsets.only(right: 40, top: 17),
                              child: Text(
                                "Trainer",
                                style: TextStyle(
                                    fontFamily: 'Lato-1', fontSize: 12),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(left: 3, top: 2),
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
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 75,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images2/Group.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
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
                                  color: Color(0xffF36501),
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
                            padding: EdgeInsets.only(top: 3, left: 8),
                            child: Icon(
                              Icons.person_add,
                              size: 77,
                              color: Color.fromARGB(104, 234, 232, 232),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 12, left: 33, right: 20),
                                  child: Text(
                                    "Add",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(220, 255, 255, 255)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 19),
                                  child: Text(
                                    "Student",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(220, 255, 255, 255)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => AddStudent())),
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
                                  color: Color(0xffF36501),
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
                              Icons.delete_forever,
                              size: 77,
                              color: Color.fromARGB(104, 234, 232, 232),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 12, left: 22, right: 20),
                                  child: Text(
                                    "Delete",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(220, 255, 255, 255)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Student",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(220, 255, 255, 255)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                DeleteStudent())),
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
                                  color: Color(0xffF36501),
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
                              Icons.edit,
                              size: 77,
                              color: Color.fromARGB(104, 234, 232, 232),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 12, left: 37, right: 20),
                                  child: Text(
                                    "Edit",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(220, 255, 255, 255)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Text(
                                    "Details",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(220, 255, 255, 255)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                EditStudentDetails())),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
