import 'dart:convert';
import 'dart:ui';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../NavBars/NavBarTrainer.dart';
import 'EventsRecord.dart';
import 'package:http/http.dart' as http;

class ViewAllEvent extends StatefulWidget {
  @override
  ViewAllEventstate createState() => ViewAllEventstate();
}

class ViewAllEventstate extends State<ViewAllEvent> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  void initState() {
    super.initState();
    readData();
  }

  bool isLoading = true;
  var list = [];
  var data;
  Future<void> readData() async {
    var url = "https://training-manager-2003-default-rtdb.firebaseio.com/" +
        "Events.json";

    try {
      final response = await http.get(Uri.parse(url));
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      extractedData.forEach((blogId, blogData) {
        data = blogData['DATA'];

        setState(() {
          list.add(data);
        });

        print(list.toString());
      });
      setState(() {
        isLoading = false;
      });
    } catch (error) {
      throw error;
    }
  }

  @override
  Widget build(BuildContext context) {
    // context.read<ViewAllEventProvider>().seteveList(data);
    return WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Scaffold(
            key: _scaffoldKey,
            drawer: new NavBarTrainer(),
            body: SafeArea(
              child: Container(
                  child: Column(
                children: [
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
                              Icons.menu,
                              color: Colors.black,
                              size: 20,
                            ),
                            onPressed: () =>
                                _scaffoldKey.currentState?.openDrawer(),
                          ),
                          Text(
                            "Event Records",
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
                  __EventHeader(),
                  Expanded(child: _EventList(list)),
                  _EventButton(),
                ],
              )),
            )));
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
          image: AssetImage("assets/images2/eventrecord.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Text(
          "Event Record",
          style: TextStyle(
              fontFamily: 'Poppins', fontSize: 17, color: Colors.white),
        ),
      ),
    );
  }
}

class __EventHeader extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 5, bottom: 9),
          child: Container(
            alignment: Alignment.topLeft,
            child: Text(
              'EVENT',
              style: TextStyle(fontFamily: 'Lato-1', fontSize: 13),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 17, right: 15),
          child: Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              border: TableBorder(
                top: BorderSide(width: 1, color: Color(0xffFFFFFF)),
                bottom: BorderSide(width: 1, color: Color(0xffFFFFFF)),
                left: BorderSide(width: 1, color: Color(0xffFFFFFF)),
                right: BorderSide(width: 1, color: Color(0xffFFFFFF)),
                verticalInside: BorderSide(width: 1, color: Color(0xffFFFFFF)),
              ),
              children: [
                TableRow(children: [
                  Container(
                    color: Color(0xffF36501),
                    padding: EdgeInsets.only(top: 10, bottom: 7),
                    child: Center(
                      child: Text(
                        'Date',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xffF36501),
                    padding: EdgeInsets.only(top: 10, bottom: 7),
                    child: Center(
                      child: Text('Event Name',
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              color: Colors.white)),
                    ),
                  ),
                  Container(
                    color: Color(0xffF36501),
                    padding: EdgeInsets.only(top: 10, bottom: 7),
                    child: Center(
                      child: Text('Event No.',
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              color: Colors.white)),
                    ),
                  ),
                  Container(
                    color: Color(0xffF36501),
                    padding: EdgeInsets.only(top: 10, bottom: 7),
                    child: Center(
                      child: Text('Type',
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              color: Colors.white)),
                    ),
                  ),
                ]),
              ]),
        )
      ],
    );
  }
}

class _EventList extends StatelessWidget {
  _EventList(this.list);
  List list;
  @override
  Widget build(BuildContext context) {
    print('LISSSST === $list');
    // final List<Events> events = [
    //   Events(
    //     id: 'p1',
    //     date: 'Dart',
    //     eventName: ' as well Dart.',
    //     eventNo: '9.99',
    //     eventType: 'A',
    //   ),
    //   Events(
    //     id: 'p1',
    //     date: 'Dart',
    //     eventName: ' as well Dart.',
    //     eventNo: '9.99',
    //     eventType: 'A',
    //   ),
    //   Events(
    //     id: 'p1',
    //     date: 'Dart',
    //     eventName: ' as well Dart.',
    //     eventNo: '9.99',
    //     eventType: 'A',
    //   ),
    //   Events(
    //     id: 'p1',
    //     date: 'Dart',
    //     eventName: ' as well Dart.',
    //     eventNo: '9.99',
    //     eventType: 'A',
    //   ),
    //   Events(
    //     id: 'p1',
    //     date: 'Dart',
    //     eventName: ' as well Dart.',
    //     eventNo: '9.99',
    //     eventType: 'A',
    //   ),
    //   Events(
    //     id: 'p1',
    //     date: 'Dart',
    //     eventName: ' as well Dart.',
    //     eventNo: '9.99',
    //     eventType: 'A',
    //   ),
    // ];

    if (list.isNotEmpty) {
      return ListView.separated(
          itemCount: list.length,
          padding: const EdgeInsets.only(left: 2, right: 0),
          separatorBuilder: (context, index) => const Divider(
                height: 0.0,
              ),
          itemBuilder: (BuildContext context, int index) {
            Color color = index.isOdd ? Color(0xffF2E4BB) : Color(0xffF9D298);
            return Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Container(
                color: color,
                padding: const EdgeInsets.all(0.0),
                child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    border: TableBorder(
                      top: BorderSide(width: 1, color: Color(0xffFFFFFF)),
                      bottom: BorderSide(width: 1, color: Color(0xffFFFFFF)),
                      left: BorderSide(width: 1, color: Color(0xffFFFFFF)),
                      right: BorderSide(width: 1, color: Color(0xffFFFFFF)),
                      verticalInside:
                          BorderSide(width: 1, color: Color(0xffFFFFFF)),
                    ),
                    children: [
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 7),
                          child: Center(
                            child: Text(
                              list[index]['Date'].toString(),
                              style:
                                  TextStyle(fontSize: 9, fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 7),
                          child: Center(
                            child: Text(list[index]['Event_Name'].toString(),
                                style: TextStyle(
                                    fontSize: 9, fontFamily: 'Poppins')),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 7),
                          child: Center(
                            child: Text(list[index]['Event_No'].toString(),
                                style: TextStyle(
                                    fontSize: 9, fontFamily: 'Poppins')),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, bottom: 7),
                          child: Center(
                            child: Text(list[index]['Event_Type'].toString(),
                                style: TextStyle(
                                    fontSize: 9, fontFamily: 'Poppins')),
                          ),
                        ),
                      ]),
                    ]),
              ),
            );
          });
    } else {
      return Container();
    }
  }
}

class _EventButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              maximumSize: const Size(double.infinity, 50),
              padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
              primary: Color(0xff000071),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0))),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => EventsRecord()),
            );
          },
          child: Center(
            child: Text(
              "EDIT EVENT RECORD",
              style: TextStyle(fontSize: 17),
            ),
          )),
    );
  }
}

class Events {
  final String id;
  final String date;
  final String eventName;
  final String eventNo;
  final String eventType;

  Events({
    required this.id,
    required this.date,
    required this.eventName,
    required this.eventNo,
    required this.eventType,
  });
}



// "{"-N7ypiMq5crRuTBtvK09":{"DATA":{"Date":"22.01.2022","Event_Name":"ethr","Event_No":"1234","Event_Type":"Knock-Out"}}}"
