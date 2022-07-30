import 'package:flutter/material.dart';
import '../../NavBars/NavBarTrainer.dart';
import '../../Trainer/TrainerDboard.dart';

class ViewTasks extends StatefulWidget {
  @override
  ViewTasksstate createState() => ViewTasksstate();
}

class ViewTasksstate extends State<ViewTasks> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
          body: SafeArea(
        child: Column(children: <Widget>[
          //////////////////
          Container(
            height: 50,
            padding: EdgeInsets.only(top: 0, left: 5),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                    size: 20,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                Text(
                  "View Practice Tasks",
                  style: TextStyle(
                      color: Colors.black, fontSize: 15, fontFamily: 'Poppins'),
                ),
                Container(
                  padding: EdgeInsets.only(left: 60, right: 10),
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
                          padding: EdgeInsets.only(right: 30, top: 7),
                          child: Text(
                            "Student",
                            style:
                                TextStyle(fontFamily: 'Lato-1', fontSize: 12),
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
                                  color: Color(0xffF36501)),
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
          /////////////////
          ////////////////
          _ImageData(),
          __ViewtaskHeader(),
          Expanded(child: __ViewTask()),
          _Bottom(),
        ]),
      )),
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
        //color: Colors.red,
        image: DecorationImage(
          image: AssetImage("assets/images2/Traineeone.png"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class __ViewtaskHeader extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 16.5, right: 15.5),
      child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          border: TableBorder(
              top: BorderSide(width: 1, color: Color(0xffFFFFFF)),
              bottom: BorderSide(width: 1, color: Color(0xffFFFFFF)),
              left: BorderSide(width: 1, color: Color(0xffFFFFFF)),
              right: BorderSide(width: 1, color: Color(0xffFFFFFF)),
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
                  child: Text('Repitition',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          color: Colors.white)),
                ),
              ),
              Container(
                color: Color(0xffF36501),
                padding: EdgeInsets.only(top: 10, bottom: 7),
                child: Center(
                  child: Text(
                    'Done',
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
                  child: Text(
                    'Rating',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        color: Colors.white),
                  ),
                ),
              ),
            ]),
          ]),
    );
  }
}

class __ViewTask extends StatefulWidget {
  @override
  __ViewTaskstate createState() => __ViewTaskstate();
}

class __ViewTaskstate extends State<__ViewTask> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    //final List<String> eventList = <String>['A', 'B', 'C'];
    //////////
    final List<Events> events = [
      Events(
        id: 'p1',
        name: 'Dart',
        reps: 54,
        // eventNo: '9.99',
        // eventType: 'A',
      ),
      Events(
        id: 'p1',
        name: 'Dart',
        reps: 45,
        // eventNo: '9.99',
        // eventType: 'A',
      ),
    ];
    /////////
    if (events.isNotEmpty) {
      return ListView.separated(
          itemCount: events.length,
          padding: const EdgeInsets.only(left: 16.5, right: 15.5),
          separatorBuilder: (context, index) => const Divider(
                height: 0.0,
              ),
          itemBuilder: (BuildContext context, int index) {
            Color color = index.isOdd ? Color(0xffF2E4BB) : Color(0xffF9D298);

            return Container(
              color: color,
              padding: EdgeInsets.all(0.0),
              child: Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border: TableBorder(
                    // top: BorderSide(color: Color(0xff000071), width: 1),
                    bottom: BorderSide(color: Color(0xffFFFFFF), width: 1),
                    left: BorderSide(color: Color(0xffFFFFFF), width: 1),
                    right: BorderSide(color: Color(0xffFFFFFF), width: 1),
                  ),
                  children: [
                    TableRow(children: [
                      Container(
                        padding: EdgeInsets.only(top: 0, bottom: 0),
                        child: Center(
                          child: Text(
                            events[index].name.toString(),
                            style:
                                TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 0, bottom: 0),
                        child: Center(
                          child: Text(
                            events[index].reps.toString(),
                            style:
                                TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                      Container(
                        height: 25,
                        padding: EdgeInsets.only(top: 0, bottom: 0),
                        child: Center(
                          // padding: EdgeInsets.only(left: 48),
                          child: Transform.scale(
                            scale: 0.75,
                            child: Checkbox(
                              side: MaterialStateBorderSide.resolveWith(
                                (states) => BorderSide(
                                    width: 1.5, color: Color(0xff06A406)),
                              ),
                              // activeColor: Colors.white,
                              checkColor: Color(0xff06A406),
                              value: this.value,
                              onChanged: (value) {
                                setState(() {
                                  this.value = value!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 20,
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 3),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ]),
                  ]),
            );
          });
    } else {
      return Container();
    }
  }
}

class Events {
  final String id;
  final String name;
  final int reps;
  // final String ;
  // final String ;

  Events({
    required this.id,
    required this.name,
    required this.reps,
    // required this.eventNo,
    // required this.eventType,
  });
}

class _Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 15, top: 30, right: 10),
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
                        builder: (BuildContext context) => TrainerDboard()),
                  );
                },
              )),
          Padding(
              padding: const EdgeInsets.only(top: 30, right: 0, left: 75.7),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(130, 44),
                    maximumSize: const Size(130, 44),
                    padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
                    primary: Color(0xffF36501),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 1, 0),
                  child: Row(
                    children: [
                      Icon(Icons.notifications),
                      Text(
                        " NOTIFY",
                        style: TextStyle(fontFamily: 'Lato-1', fontSize: 16),
                      )
                    ],
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => TrainerDboard()),
                  );
                },
              ))
        ],
      ),
    );
  }
}
