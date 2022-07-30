import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sports_training/Trainer/StudentRecordAlter/AlterStudent.dart';

import '../TrainerDboard.dart';
import 'EditStudentDetailsProvider.dart';

class EditStudentDetails extends StatefulWidget {
  @override
  EditStudentDetailsstate createState() => EditStudentDetailsstate();
}

class EditStudentDetailsstate extends State<EditStudentDetails> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  String dropdownvalue = 'Select Detail';

  var items = ['Select Detail', 'Name', 'Sports', 'Gender', 'Mob. No.'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                color: Color(0xffFEFDF5),
                width: MediaQuery.of(context).size.width,
                height: 50.0,
                child: Container(
                  padding: EdgeInsets.only(top: 0, left: 5, bottom: 12),
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
                        "Edit Details",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Poppins'),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 90, right: 20, top: 4),
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
                  "Enter Following Details",
                  style: TextStyle(
                      fontFamily: 'Poppins', fontSize: 17, color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 130,
              padding: EdgeInsets.fromLTRB(43, 21, 43, 24),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 25,
                    decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 1, color: Color(0xff143F6B))),
                    ),
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
                          padding: EdgeInsets.only(left: 16, top: 9.6),
                          width: 281,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            controller: context
                                .watch<EditStudentDetailsProvider>()
                                .getEnrollController,
                            onChanged: (text) => context
                                .read<EditStudentDetailsProvider>()
                                .setStuEnroll(text),
                            decoration: InputDecoration(
                              hintText: "Enter Enrollment No.",
                            ),
                            style:
                                TextStyle(fontSize: 13, fontFamily: 'Lato-2'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Color(0xff143F6B))),
                      ),
                      child: Row(
                        children: [
                          Container(
                            color: Color(0xffF36501),
                            padding: const EdgeInsets.only(left: 0),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(9.5, 0, 0, 0),
                            child: Center(
                                child: Container(
                              width: 271.2,
                              height: 25,
                              decoration: BoxDecoration(),
                              padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
                              child: DropdownButton(
                                  value: dropdownvalue,
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(
                                        items,
                                        style: TextStyle(
                                            fontSize: 13, fontFamily: 'Lato-2'),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                      context
                                          .read<EditStudentDetailsProvider>()
                                          .setStuDetail(newValue as String);
                                    });
                                  }),
                            )),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Color(0xffFBDCC6),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.fromLTRB(27, 21, 27, 24),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 25,
                      decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Color(0xff143F6B))),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: Color(0xffF36501),
                            ),
                            child: Icon(
                              Icons.folder_zip_sharp,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 16, top: 9.6),
                            width: 281,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              controller: context
                                  .watch<EditStudentDetailsProvider>()
                                  .getEnrollController,
                              onChanged: (text) => context
                                  .read<EditStudentDetailsProvider>()
                                  .setStuEnroll(text),
                              decoration: InputDecoration(
                                hintText: "Enter previous record.",
                              ),
                              style:
                                  TextStyle(fontSize: 13, fontFamily: 'Lato-2'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 21),
                      child: Container(
                        height: 25,
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Color(0xff143F6B))),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Color(0xffF36501),
                              ),
                              child: Icon(
                                Icons.folder_open_outlined,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 16, top: 9.6),
                              width: 281,
                              child: TextField(
                                controller: context
                                    .watch<EditStudentDetailsProvider>()
                                    .getEnrollController,
                                onChanged: (text) => context
                                    .read<EditStudentDetailsProvider>()
                                    .setStuEnroll(text),
                                decoration: InputDecoration(
                                  hintText: "Enter new record",
                                ),
                                style: TextStyle(
                                    fontSize: 13, fontFamily: 'Lato-2'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 0, top: 51, bottom: 32, right: 10),
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
                                    style: TextStyle(
                                        fontFamily: 'Lato-1', fontSize: 16),
                                  )
                                ],
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          AlterStudent()),
                                );
                              },
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 51, bottom: 32, right: 0, left: 36.5),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(130, 44),
                                  maximumSize: const Size(130, 44),
                                  padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
                                  primary: Color(0xffF36501),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25))),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(5.5, 0, 2, 0),
                                child: Row(
                                  children: [
                                    Icon(Icons.system_update_alt),
                                    Text(
                                      "UPDATE",
                                      style: TextStyle(
                                          fontFamily: 'Lato-1', fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          AlterStudent()),
                                );
                              },
                            ))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
