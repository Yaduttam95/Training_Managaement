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
                color: const Color(0xffFEFDF5),
                width: MediaQuery.of(context).size.width,
                height: 52.0,
                child: Container(
                  padding: const EdgeInsets.only(top: 0, left: 5),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 20,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      const Text(
                        "Add Students",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Poppins'),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 87, right: 20),
                        child: Row(children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(right: 0),
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(35)),
                            child: const Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                padding:
                                    const EdgeInsets.only(right: 40, top: 7),
                                child: const Text(
                                  "Trainer",
                                  style: TextStyle(
                                      fontFamily: 'Lato-1', fontSize: 12),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                child: const Padding(
                                  padding:
                                      const EdgeInsets.only(left: 3, top: 2),
                                  child: const Text(
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
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: const AssetImage("assets/images2/Group.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: const Center(
        child: const Text(
          "Student details",
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
        padding: const EdgeInsets.only(top: 20),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 26, right: 28),
            child: Container(
              height: 25,
              width: 50,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: const BorderSide(
                          width: 1, color: const Color(0xff143F6B)))),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      color: const Color(0xffF36501),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.64, top: 9),
                    width: 313,
                    child: TextField(
                      controller: context
                          .watch<AddStudentsProvider>()
                          .getNameController,
                      onChanged: (text) =>
                          context.read<AddStudentsProvider>().setStuName(text),
                      decoration: const InputDecoration(
                        hintText: "Name",
                      ),
                      style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontFamily: 'Lato-2'),
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
              decoration: const BoxDecoration(
                  border: const Border(
                      bottom: BorderSide(width: 1, color: Color(0xff143F6B)))),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      color: Color(0xffF36501),
                    ),
                    child: const Icon(
                      Icons.format_list_numbered_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.64, top: 9),
                    width: 313,
                    child: TextField(
                      controller: context
                          .watch<AddStudentsProvider>()
                          .getEnrollController,
                      onChanged: (text) => context
                          .read<AddStudentsProvider>()
                          .setStuEnroll(text),
                      decoration: const InputDecoration(
                        hintText: "Enrollment No.",
                      ),
                      style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontFamily: 'Lato-2'),
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
              decoration: const BoxDecoration(
                  border: const Border(
                      bottom: BorderSide(
                          width: 1, color: const Color(0xff143F6B)))),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      color: const Color(0xffF36501),
                    ),
                    child: const Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.64, top: 9),
                    width: 313,
                    child: TextField(
                      controller:
                          context.watch<AddStudentsProvider>().getDOBController,
                      onChanged: (text) =>
                          context.read<AddStudentsProvider>().setDOB(text),
                      keyboardType: TextInputType.datetime,
                      decoration: const InputDecoration(
                        hintText: "DOB",
                      ),
                      style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontFamily: 'Lato-2'),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 21, left: 26, right: 28),
            child: Container(
              padding: const EdgeInsets.only(top: 0),
              decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xff143F6B))),
              ),
              child: Row(
                children: [
                  Container(
                    color: const Color(0xffF36501),
                    padding: const EdgeInsets.only(left: 0),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(9.5, 0, 0, 0),
                    child: Center(
                        child: Container(
                      width: 271.2,
                      height: 25,
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.fromLTRB(7, 0, 10, 2),
                      child: DropdownButton(
                          underline: SizedBox(),
                          value: dropdownvalue,
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey[700],
                                    fontFamily: 'Lato-2'),
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
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 28, left: 26, right: 28),
            child: Container(
              height: 25,
              width: 50,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xff143F6B)))),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      color: Color(0xffF36501),
                    ),
                    child: const Icon(
                      Icons.calendar_month_sharp,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.64, top: 9),
                    width: 313,
                    child: TextField(
                      controller:
                          context.watch<AddStudentsProvider>().getAgeController,
                      onChanged: (text) =>
                          context.read<AddStudentsProvider>().setAge(text),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: "Age",
                      ),
                      style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontFamily: 'Lato-2'),
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
              decoration: const BoxDecoration(
                  border: const Border(
                      bottom: BorderSide(
                          width: 1, color: const Color(0xff143F6B)))),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      color: const Color(0xffF36501),
                    ),
                    child: const Icon(
                      Icons.sports_gymnastics_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.64, top: 9),
                    width: 313,
                    child: TextField(
                      controller: context
                          .watch<AddStudentsProvider>()
                          .getSportsController,
                      onChanged: (text) => context
                          .read<AddStudentsProvider>()
                          .setStuSports(text),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: "Sports",
                      ),
                      style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontFamily: 'Lato-2'),
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
              decoration: const BoxDecoration(
                  border: const Border(
                      bottom: BorderSide(
                          width: 1, color: const Color(0xff143F6B)))),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      color: const Color(0xffF36501),
                    ),
                    child: const Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.64, top: 9),
                    width: 313,
                    child: TextField(
                      controller: context
                          .watch<AddStudentsProvider>()
                          .getAddressController,
                      onChanged: (text) =>
                          context.read<AddStudentsProvider>().setAddress(text),
                      decoration: const InputDecoration(
                        hintText: "Address",
                      ),
                      style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontFamily: 'Lato-2'),
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
              decoration: const BoxDecoration(
                  border: const Border(
                      bottom: BorderSide(width: 1, color: Color(0xff143F6B)))),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      color: Color(0xffF36501),
                    ),
                    child: const Icon(
                      Icons.fiber_pin_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.64, top: 9),
                    width: 313,
                    child: TextField(
                      controller: context
                          .watch<AddStudentsProvider>()
                          .getPinCodeController,
                      onChanged: (text) =>
                          context.read<AddStudentsProvider>().setPinCode(text),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: "PINCODE",
                      ),
                      style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontFamily: 'Lato-2'),
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
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: const BorderSide(
                          width: 1, color: Color(0xff143F6B)))),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      color: Color(0xffF36501),
                    ),
                    child: const Icon(
                      Icons.map_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.64, top: 9),
                    width: 313,
                    child: TextField(
                      controller: context
                          .watch<AddStudentsProvider>()
                          .getStatteController,
                      onChanged: (text) =>
                          context.read<AddStudentsProvider>().setStatte(text),
                      decoration: const InputDecoration(
                        hintText: "State",
                      ),
                      style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontFamily: 'Lato-2'),
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
              decoration: const BoxDecoration(
                  border: const Border(
                      bottom: BorderSide(width: 1, color: Color(0xff143F6B)))),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      color: Color(0xffF36501),
                    ),
                    child: const Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.64, top: 9),
                    width: 313,
                    child: TextField(
                      controller:
                          context.watch<AddStudentsProvider>().getMobController,
                      onChanged: (text) =>
                          context.read<AddStudentsProvider>().setStuMob(text),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: "Mobile No.",
                      ),
                      style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontFamily: 'Lato-2'),
                    ),
                  )
                ],
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
                const EdgeInsets.only(left: 20, top: 0, right: 10, bottom: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(130, 44),
                  maximumSize: const Size(130, 44),
                  padding: const EdgeInsets.fromLTRB(15, 7, 15, 7),
                  primary: const Color(0xff000071),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              child: Row(
                children: [
                  const Icon(Icons.close),
                  const Text(
                    "DISCARD",
                    style: const TextStyle(fontFamily: 'Lato-1', fontSize: 16),
                  )
                ],
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        Padding(
            padding: const EdgeInsets.only(
                top: 0, right: 20, left: 82.7, bottom: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(130, 44),
                  maximumSize: const Size(130, 44),
                  padding: const EdgeInsets.fromLTRB(15, 7, 15, 7),
                  primary: const Color(0xffF36501),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                child: Row(
                  children: [
                    const Icon(Icons.add),
                    const Text(
                      "ADD",
                      style:
                          const TextStyle(fontFamily: 'Lato-1', fontSize: 16),
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
