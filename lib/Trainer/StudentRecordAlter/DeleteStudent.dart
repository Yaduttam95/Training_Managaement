import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sports_training/Trainer/StudentRecordAlter/AlterStudent.dart';

import '../TrainerDboard.dart';
import '../TrainerRegister/TrainerPageProvider.dart';
import 'DeleteStudentProvider.dart';

class DeleteStudent extends StatefulWidget {
  @override
  DeleteStudentstate createState() => DeleteStudentstate();
}

class DeleteStudentstate extends State<DeleteStudent> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                child: ListView(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Container(
          color: Color(0xffFEFDF5),
          width: MediaQuery.of(context).size.width,
          height: 50.0,
          child: Container(
            padding: EdgeInsets.only(top: 4, left: 5, bottom: 0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 20,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                Text(
                  "Delete Student",
                  style: TextStyle(
                      color: Colors.black, fontSize: 15, fontFamily: 'Poppins'),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 80, right: 12, top: 5, bottom: 2),
                  child: Row(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Container(
                        padding: EdgeInsets.only(right: 0, top: 0),
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
                          padding: EdgeInsets.only(right: 40, top: 0),
                          child: Text(
                            "Trainer",
                            style:
                                TextStyle(fontFamily: 'Lato-1', fontSize: 12),
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
        child: Center(
          child: Text(
            "Enter Student Details",
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 17, color: Colors.white),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 50),
        height: 129,
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 26, right: 28),
              child: Container(
                height: 25,
                width: 50,
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Color(0xff143F6B)))),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Color(0xffF36501),
                      ),
                      child: Icon(
                        Icons.format_list_numbered,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15.64, top: 11.6),
                      width: 313,
                      child: TextField(
                        controller: context
                            .watch<DeleteStudentProvider>()
                            .getEnrollController,
                        onChanged: (text) => context
                            .read<DeleteStudentProvider>()
                            .setStuEnroll(text),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Enter Student Enrollment No.",
                        ),
                        style: TextStyle(fontSize: 13),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 28, left: 26, right: 28),
              child: Container(
                height: 25,
                width: 50,
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Color(0xff143F6B)))),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Color(0xffF36501),
                      ),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15.64, top: 10.6),
                      width: 313,
                      child: TextField(
                        controller: context
                            .watch<DeleteStudentProvider>()
                            .getNameController,
                        onChanged: (text) => context
                            .read<DeleteStudentProvider>()
                            .setStuName(text),
                        decoration: InputDecoration(
                          hintText: "Enter Student's name",
                        ),
                        style: TextStyle(fontSize: 13),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 20, top: 71, right: 6),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(130, 44),
                    maximumSize: const Size(130, 44),
                    padding: EdgeInsets.fromLTRB(18, 7, 15, 7),
                    primary: Color(0xff000071),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                child: Row(
                  children: [
                    Icon(Icons.close),
                    Text(
                      "CANCEL",
                      style: TextStyle(fontFamily: 'Lato-1', fontSize: 16),
                    )
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => AlterStudent()),
                  );
                },
              )),
          Padding(
              padding: const EdgeInsets.only(top: 71, right: 20, left: 86.7),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(130, 44),
                    maximumSize: const Size(130, 44),
                    padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
                    primary: Color(0xffF36501),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    children: [
                      Icon(Icons.check),
                      Text(
                        "CONFIRM",
                        style: TextStyle(fontFamily: 'Lato-1', fontSize: 16),
                      )
                    ],
                  ),
                ),
                onPressed: () {
                  context.read<DeleteStudentProvider>().DeleteStudent(context);
                },
              ))
        ],
      )
    ]))));
  }
}
