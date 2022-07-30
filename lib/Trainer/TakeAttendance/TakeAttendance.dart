import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sports_training/Trainer/TakeAttendance/TakeAttendanceProvider.dart';
import '../../NavBars/NavBarTrainer.dart';

class TakeAttendance extends StatefulWidget {
  @override
  TakeAttendancestate createState() => TakeAttendancestate();
}

class TakeAttendancestate extends State<TakeAttendance> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Scaffold(
          key: _scaffoldKey,
          drawer: new NavBarTrainer(),
          body: SafeArea(
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
                          Icons.menu,
                          color: Colors.black,
                          size: 20,
                        ),
                        onPressed: () =>
                            _scaffoldKey.currentState?.openDrawer(),
                      ),
                      Text(
                        "Take Attendance",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Poppins'),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 64, right: 20),
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
              _AboveListHeader(),
              __AttendanceHeader(),
              Expanded(child: __Attendance()),
            ],
          )),
        ));
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
    );
  }
}

class _AboveListHeader extends StatefulWidget {
  @override
  _AboveListHeaderstate createState() => _AboveListHeaderstate();
}

class _AboveListHeaderstate extends State<_AboveListHeader> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    String now = DateFormat("yyyy-MM-dd").format(DateTime.now());
    print(now);
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 16.5, right: 7, bottom: 0),
      child: Container(
        height: 30,
        child: Row(children: <Widget>[
          Container(
            child: Text(
              now,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000071),
                  fontSize: 13),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 203),
            child: Row(
              children: [
                Transform.scale(
                  scale: 0.7,
                  child: Checkbox(
                    side: MaterialStateBorderSide.resolveWith(
                      (states) =>
                          BorderSide(width: 1.5, color: Color(0xff06A406)),
                    ),
                    checkColor: Color(0xff06A406),
                    value: context
                        .watch<TakeAttendanceProvider>()
                        .getAllAttendanceSelected,
                    onChanged: (bool? value) {
                      context
                          .read<TakeAttendanceProvider>()
                          .setAllAttendanceSelected(value!, context);
                    },
                  ),
                ),
                Text(
                  "All",
                  style: TextStyle(
                      color: Color(0xff4D4C4C),
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class __AttendanceHeader extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.5, right: 15.5),
      child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          border: TableBorder(
              top: BorderSide(width: 1, color: Color(0xffF36501)),
              bottom: BorderSide(width: 1, color: Color(0xff000071)),
              left: BorderSide(width: 1, color: Color(0xffF36501)),
              right: BorderSide(width: 1, color: Color(0xffF36501)),
              verticalInside: BorderSide(width: 1, color: Color(0xffFFFFFF))),
          children: [
            TableRow(children: [
              Container(
                color: Color(0xffF36501),
                padding: EdgeInsets.only(top: 10, bottom: 7),
                child: Center(
                  child: Text(
                    'Name',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        color: Colors.white),
                  ),
                ),
              ),
              Container(
                color: Color(0xffF36501),
                padding: EdgeInsets.only(top: 10, bottom: 7),
                child: Center(
                  child: Text('Status',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          color: Colors.white)),
                ),
              ),
            ]),
          ]),
    );
  }
}

class __Attendance extends StatefulWidget {
  @override
  __Attendancestate createState() => __Attendancestate();
}

class __Attendancestate extends State<__Attendance> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    final List<Events> events = [
      Events(
        id: 'p1',
        name: 'Dart',
      ),
      Events(
        id: 'p1',
        name: 'Dart',
      ),
    ];

    if (events.isNotEmpty) {
      if (context.read<TakeAttendanceProvider>().isAllAttendanceSelected ==
          true) {
        var a = context.read<TakeAttendanceProvider>().isAllAttendanceSelected;
        print('a===$a');

        return ListView.separated(
            itemCount: events.length,
            padding: const EdgeInsets.only(left: 16.5, right: 15.5),
            separatorBuilder: (context, index) => const Divider(
                  height: 0.0,
                ),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.all(0.0),
                child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    border: TableBorder(
                      bottom: BorderSide(color: Color(0xff000071), width: 1),
                      left: BorderSide(color: Color(0xff000071), width: 1),
                      right: BorderSide(color: Color(0xff000071), width: 1),
                    ),
                    children: [
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.only(top: 0, bottom: 0),
                          child: Center(
                            child: Text(
                              events[index].name.toString(),
                              style: TextStyle(
                                  fontSize: 10, fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                        Container(
                          height: 22,
                          padding: EdgeInsets.only(top: 0, bottom: 0),
                          child: Container(
                            padding: EdgeInsets.only(left: 48),
                            child: Row(
                              children: [
                                Text(
                                  "Present",
                                  style: TextStyle(
                                      color: Color(0xff06A406),
                                      fontFamily: 'Poppins'),
                                ),
                                Transform.scale(
                                  scale: 0.75,
                                  child: Checkbox(
                                    side: MaterialStateBorderSide.resolveWith(
                                      (states) => BorderSide(
                                          width: 1.5, color: Color(0xff06A406)),
                                    ),
                                    checkColor: Color(0xff06A406),
                                    value: true,
                                    onChanged: (value) {
                                      setState(() {
                                        this.value = value!;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ]),
              );
            });
      } else {
        return ListView.separated(
            itemCount: events.length,
            padding: const EdgeInsets.only(left: 16.5, right: 15.5),
            separatorBuilder: (context, index) => const Divider(
                  height: 0.0,
                ),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.all(0.0),
                child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    border: TableBorder(
                      bottom: BorderSide(color: Color(0xff000071), width: 1),
                      left: BorderSide(color: Color(0xff000071), width: 1),
                      right: BorderSide(color: Color(0xff000071), width: 1),
                    ),
                    children: [
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.only(top: 0, bottom: 0),
                          child: Center(
                            child: Text(
                              events[index].name.toString(),
                              style: TextStyle(
                                  fontSize: 10, fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                        Container(
                          height: 22,
                          padding: EdgeInsets.only(top: 0, bottom: 0),
                          child: Container(
                            padding: EdgeInsets.only(left: 48),
                            child: Row(
                              children: [
                                Text(
                                  "Present",
                                  style: TextStyle(
                                      color: Color(0xff06A406),
                                      fontFamily: 'Poppins'),
                                ),
                                Transform.scale(
                                  scale: 0.75,
                                  child: Checkbox(
                                    side: MaterialStateBorderSide.resolveWith(
                                      (states) => BorderSide(
                                          width: 1.5, color: Color(0xff06A406)),
                                    ),
                                    checkColor: Color(0xff06A406),
                                    value: this.value,
                                    onChanged: (value) {
                                      setState(() {
                                        this.value = value!;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ]),
              );
            });
      }
    } else {
      return Container();
    }
  }
}

class Events {
  final String id;
  final String name;

  Events({
    required this.id,
    required this.name,
  });
}
