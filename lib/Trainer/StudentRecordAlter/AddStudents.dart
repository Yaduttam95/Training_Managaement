import 'package:flutter/material.dart';
import 'package:sports_training/Trainer/StudentRecordAlter/AlterStudent.dart';

import '../EventsRecord/EventsRecord.dart';
import '../TrainerDboard.dart';

import 'package:provider/provider.dart';

import 'AddStudentsProvider.dart';

class AddStudent extends StatefulWidget {
  @override
  AddStudentstate createState() => AddStudentstate();
}

class AddStudentstate extends State<AddStudent> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
        body: SafeArea(
            child: SafeArea(
                child: Container(
          child: Column(
            children: <Widget>[
              Container(
                color: Color(0xffFEFDF5),
                width: MediaQuery.of(context).size.width,
                height: 52.0,
                child: Container(
                  padding: EdgeInsets.only(top: 0, left: 5),
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
                        "Add Students",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Poppins'),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 87, right: 20),
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
                                padding: EdgeInsets.only(right: 40, top: 7),
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
              _ImageData(),
              Expanded(child: _AddStudentList()),
              _EventButton(),
            ],
          ),
        ))),
      ),
    );
  }
}

class _ImageData extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Container(
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
          "Enter Student details",
          style: TextStyle(
              fontFamily: 'Poppins', fontSize: 17, color: Colors.white),
        ),
      ),
    );
  }
}

class _AddStudentList extends StatefulWidget {
  @override
  _AddStudentListstate createState() => _AddStudentListstate();
}

class _AddStudentListstate extends State<_AddStudentList> {
  String dropdownvalue = 'Select Gender';

  var items = [
    'Select Gender',
    'Male',
    'Female',
    'Rather Not Say',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.only(top: 0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller:
                    context.watch<AddStudentsProvider>().getNameController,
                onChanged: (text) =>
                    context.read<AddStudentsProvider>().setStuName(text),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  icon: const Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.black,
                  ),
                  hintText: 'Enter Student name',
                  labelText: 'Name',
                  labelStyle:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  hintStyle:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              controller:
                  context.watch<AddStudentsProvider>().getSportsController,
              onChanged: (text) =>
                  context.read<AddStudentsProvider>().setStuSports(text),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                icon: const Icon(
                  Icons.sports_score,
                  size: 30,
                  color: Colors.black,
                ),
                hintText: 'Enter Sports name',
                labelText: 'Sport',
                labelStyle:
                    TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Icon(
                  Icons.person_outlined,
                  size: 35,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(11, 10, 10, 10),
                child: Center(
                    child: Container(
                  width: 327.6,
                  height: 57,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 0.7),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(10, 3, 10, 2),
                  child: DropdownButton(
                      value: dropdownvalue,
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                          context
                              .read<AddStudentsProvider>()
                              .setStuGender(newValue as String);
                        });
                      }),
                )),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              controller: context.watch<AddStudentsProvider>().getMobController,
              onChanged: (text) =>
                  context.read<AddStudentsProvider>().setStuMob(text),
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                icon: const Icon(
                  Icons.phone_iphone,
                  size: 30,
                  color: Colors.black,
                ),
                hintText: 'Enter Student\'s Mobile No.',
                labelText: 'Mob. No.',
                labelStyle:
                    TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              controller:
                  context.watch<AddStudentsProvider>().getEnrollController,
              onChanged: (text) =>
                  context.read<AddStudentsProvider>().setStuEnroll(text),
              keyboardType: TextInputType.numberWithOptions(),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                icon: const Icon(
                  Icons.numbers,
                  size: 30,
                  color: Colors.black,
                ),
                hintText: 'Enter Enrollment No.',
                labelText: 'Enrollment No.',
                labelStyle:
                    TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]);
  }
}

class _EventButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 0, right: 10, bottom: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(130, 44),
                  maximumSize: const Size(130, 44),
                  padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
                  primary: Color(0xff000071),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              child: Row(
                children: [
                  Icon(Icons.close),
                  Text(
                    "DISCARD",
                    style: TextStyle(fontFamily: 'Lato-1', fontSize: 16),
                  )
                ],
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        Padding(
            padding: const EdgeInsets.only(
                top: 0, right: 20, left: 82.7, bottom: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(130, 44),
                  maximumSize: const Size(130, 44),
                  padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
                  primary: Color(0xffF36501),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 10, 0),
                child: Row(
                  children: [
                    Icon(Icons.add),
                    Text(
                      "ADD",
                      style: TextStyle(fontFamily: 'Lato-1', fontSize: 16),
                    )
                  ],
                ),
              ),
              onPressed: () {
                context.read<AddStudentsProvider>().AddStudent(context);
              },
            ))
      ],
    );
  }
}
