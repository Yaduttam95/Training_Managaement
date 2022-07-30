import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_database/firebase_database.dart';
import '../../NavBars/NavBarTrainer.dart';
import '../TrainerDboard.dart';
import 'EventProvider.dart';
import 'ViewAllEvent.dart';

class EventsRecord extends StatefulWidget {
  @override
  EventsRecordstate createState() => EventsRecordstate();
}

class EventsRecordstate extends State<EventsRecord> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  FirebaseDatabase database = FirebaseDatabase.instance;

  String dropdownvalue = 'Select Type';

  var items = [
    'Select Type',
    'Knock-Out',
    'League',
    'Challenge',
    'Combination'
  ];
  @override
  Widget build(BuildContext context) {
    drawer:
    NavBarTrainer();
    var dropdownValue = 'Select Type';
    return Scaffold(
        key: _scaffoldKey,
        drawer: new NavBarTrainer(),
        body: Center(
            child: Container(
                height: double.infinity,
                child: ListView(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(
                      color: Color(0xffFEFDF5),
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
                      child: Container(
                        padding: EdgeInsets.only(top: 7, left: 5, bottom: 0),
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.menu,
                                color: Colors.black,
                                size: 20,
                              ),
                              onPressed: () =>
                                  _scaffoldKey.currentState?.openDrawer(),
                            ),
                            Text(
                              "Event Record",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Poppins'),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(left: 90, right: 20, top: 4),
                              child: Row(children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 3),
                                  child: Container(
                                    padding: EdgeInsets.only(right: 0, top: 0),
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(35)),
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      padding:
                                          EdgeInsets.only(right: 40, top: 0),
                                      child: Text(
                                        "Trainer",
                                        style: TextStyle(
                                            fontFamily: 'Lato-1', fontSize: 12),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(left: 3, top: 2),
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
                        image: AssetImage("assets/images2/eventrecord.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: 530,
                    child: ListView(
                      padding: EdgeInsets.only(top: 0),
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 5, right: 5, top: 6),
                          child: Container(
                              alignment: Alignment.topLeft,
                              height: 305,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFBDCC6)),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 5, right: 280),
                                    child: Text(
                                      "ADD EVENT",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          color: Color(0xffBF580E)),
                                    ),
                                  ),
                                  Container(
                                    height: 210,
                                    alignment: Alignment.topLeft,
                                    child: ListView(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 0, 10, 0),
                                        children: <Widget>[
                                          Container(
                                            height: 50,
                                            padding: EdgeInsets.fromLTRB(
                                                10, 5, 10, 5),
                                            child: TextField(
                                              controller: context
                                                  .watch<EventProvider>()
                                                  .getDateController,
                                              onChanged: (text) => context
                                                  .read<EventProvider>()
                                                  .setEveDate(text),
                                              keyboardType:
                                                  TextInputType.datetime,
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                icon: const Icon(
                                                  Icons.calendar_today,
                                                  size: 30,
                                                  color: Colors.black,
                                                ),
                                                hintText: 'Enter Event Date',
                                                labelText: 'Date',
                                                labelStyle: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                hintStyle: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 50,
                                            padding: EdgeInsets.fromLTRB(
                                                10, 5, 10, 5),
                                            child: TextFormField(
                                              controller: context
                                                  .watch<EventProvider>()
                                                  .getNumberController,
                                              onChanged: (text) => context
                                                  .read<EventProvider>()
                                                  .setEveNumber(text),
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                icon: const Icon(
                                                  Icons.format_list_numbered,
                                                  size: 30,
                                                  color: Colors.black,
                                                ),
                                                hintText: 'Enter Event Number',
                                                labelText: 'Event Number',
                                                labelStyle: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                hintStyle: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 50,
                                            padding: EdgeInsets.fromLTRB(
                                                10, 5, 10, 5),
                                            child: TextFormField(
                                              controller: context
                                                  .watch<EventProvider>()
                                                  .getNameController,
                                              onChanged: (text) => context
                                                  .read<EventProvider>()
                                                  .setEveName(text),
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                icon: const Icon(
                                                  Icons.star,
                                                  size: 30,
                                                  color: Colors.black,
                                                ),
                                                hintText: 'Enter Event Name',
                                                labelText: 'Name',
                                                labelStyle: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                hintStyle: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 0, left: 9),
                                                child: Icon(
                                                  Icons.star_rate_outlined,
                                                  size: 35,
                                                ),
                                              ),
                                              Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      11, 10, 10, 10),
                                                  child: Center(
                                                      child: Container(
                                                    width: 297.7,
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: 0.7),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        Radius.circular(5.0),
                                                      ),
                                                    ),
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            10, 3, 10, 2),
                                                    child: DropdownButton(
                                                        value: dropdownvalue,
                                                        items: items.map(
                                                            (String items) {
                                                          return DropdownMenuItem(
                                                            value: items,
                                                            child: Text(
                                                              items,
                                                              style: TextStyle(
                                                                  fontSize: 17,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          );
                                                        }).toList(),
                                                        onChanged:
                                                            (String? newValue) {
                                                          setState(() {
                                                            dropdownvalue =
                                                                newValue!;
                                                            context
                                                                .read<
                                                                    EventProvider>()
                                                                .setEveType(
                                                                    newValue
                                                                        as String);
                                                          });
                                                        }),
                                                  ))),
                                            ],
                                          ),
                                        ]),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 10, right: 10),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                minimumSize:
                                                    const Size(130, 44),
                                                maximumSize:
                                                    const Size(130, 44),
                                                padding: EdgeInsets.fromLTRB(
                                                    15, 7, 15, 7),
                                                primary: Color(0xff000071),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25))),
                                            child: Row(
                                              children: [
                                                Icon(Icons.close),
                                                Text(
                                                  "CANCEL",
                                                  style: TextStyle(
                                                      fontFamily: 'Lato-1',
                                                      fontSize: 16),
                                                )
                                              ],
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        ViewAllEvent()),
                                              );
                                            },
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20, left: 72.7),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                minimumSize:
                                                    const Size(130, 44),
                                                maximumSize:
                                                    const Size(130, 44),
                                                padding: EdgeInsets.fromLTRB(
                                                    15, 7, 15, 7),
                                                primary: Color(0xffF36501),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25))),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      12, 0, 10, 0),
                                              child: Row(
                                                children: [
                                                  Icon(Icons.add),
                                                  Text(
                                                    "ADD",
                                                    style: TextStyle(
                                                        fontFamily: 'Lato-1',
                                                        fontSize: 16),
                                                  )
                                                ],
                                              ),
                                            ),
                                            onPressed: () {
                                              context
                                                  .read<EventProvider>()
                                                  .addEvent(context);
                                            },
                                          ))
                                    ],
                                  )
                                ],
                              )),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 17, left: 5, right: 5),
                          child: Container(
                              alignment: Alignment.topLeft,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffDCDCFC)),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 5, right: 260),
                                    child: Text(
                                      "DELETE EVENT",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          color: Color(0xffBF580E)),
                                    ),
                                  ),
                                  Container(
                                    height: 110,
                                    alignment: Alignment.topLeft,
                                    child: ListView(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 0, 10, 0),
                                        children: <Widget>[
                                          Container(
                                            height: 50,
                                            padding: EdgeInsets.fromLTRB(
                                                10, 5, 10, 5),
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.datetime,
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                icon: const Icon(
                                                  Icons.list,
                                                  size: 30,
                                                  color: Colors.black,
                                                ),
                                                hintText: 'Enter Event No.',
                                                labelText: 'Event No.',
                                                labelStyle: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                hintStyle: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 50,
                                            padding: EdgeInsets.fromLTRB(
                                                10, 5, 10, 5),
                                            child: TextFormField(
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                icon: const Icon(
                                                  Icons.star,
                                                  size: 30,
                                                  color: Colors.black,
                                                ),
                                                hintText: 'Enter Event Name',
                                                labelText: 'Name',
                                                labelStyle: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                hintStyle: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ]),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 10, right: 10),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                minimumSize:
                                                    const Size(130, 44),
                                                maximumSize:
                                                    const Size(130, 44),
                                                padding: EdgeInsets.fromLTRB(
                                                    15, 7, 15, 7),
                                                primary: Color(0xff000071),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25))),
                                            child: Row(
                                              children: [
                                                Icon(Icons.close),
                                                Text(
                                                  "CANCEL",
                                                  style: TextStyle(
                                                      fontFamily: 'Lato-1',
                                                      fontSize: 16),
                                                )
                                              ],
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        TrainerDboard()),
                                              );
                                            },
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20, left: 72.7),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                minimumSize:
                                                    const Size(130, 44),
                                                maximumSize:
                                                    const Size(130, 44),
                                                padding: EdgeInsets.fromLTRB(
                                                    15, 7, 15, 7),
                                                primary: Color(0xffF36501),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25))),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      9, 0, 10, 0),
                                              child: Row(
                                                children: [
                                                  Icon(Icons.delete),
                                                  Text(
                                                    "DELETE",
                                                    style: TextStyle(
                                                        fontFamily: 'Lato-1',
                                                        fontSize: 16),
                                                  )
                                                ],
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        TrainerDboard()),
                                              );
                                            },
                                          ))
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(300, 50),
                            maximumSize: const Size(300, 50),
                            padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
                            primary: Color(0xff000071),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ViewAllEvent()),
                          );
                        },
                        child: Center(
                          child: Text(
                            "VIEW ALL EVENT",
                            style: TextStyle(fontSize: 17),
                          ),
                        )),
                  )
                ]))));
  }
}
