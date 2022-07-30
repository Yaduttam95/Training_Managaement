import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../NavBars/NavBarTrainer.dart';
import '../TrainerDboard.dart';
import 'AddTrainingDetailsProvider.dart';

class AddTrainingDetails extends StatefulWidget {
  @override
  AddTrainingDetailsstate createState() => AddTrainingDetailsstate();
}

class AddTrainingDetailsstate extends State<AddTrainingDetails> {
  final _formKey = GlobalKey<FormState>();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: new NavBarTrainer(),
        body: Container(
            child: ListView(children: <Widget>[
          Container(
            color: Color(0xffFEFDF5),
            width: MediaQuery.of(context).size.width,
            height: 50.0,
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
                    onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                  ),
                  Text(
                    "Add Training Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins'),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40, right: 20),
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
                "Enter the Following Details",
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 17, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
                padding: EdgeInsets.fromLTRB(25, 5, 25, 2),
                height: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                  child: ListView(
                    children: <Widget>[
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
                                  Icons.date_range,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 16, top: 9.6),
                                width: 281,
                                child: TextField(
                                  keyboardType: TextInputType.datetime,
                                  controller: context
                                      .watch<AddTrainingDetailsProvider>()
                                      .getDateController,
                                  onChanged: (text) => context
                                      .read<AddTrainingDetailsProvider>()
                                      .setTodayDate(text),
                                  decoration: InputDecoration(
                                    hintText: "Date",
                                  ),
                                  style: TextStyle(
                                      fontSize: 13, fontFamily: 'Lato-2'),
                                ),
                              )
                            ],
                          ),
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
                                  Icons.task_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 16, top: 9.6),
                                width: 281,
                                child: TextField(
                                  controller: context
                                      .watch<AddTrainingDetailsProvider>()
                                      .getExeNameController,
                                  onChanged: (text) => context
                                      .read<AddTrainingDetailsProvider>()
                                      .setexeName(text),
                                  decoration: InputDecoration(
                                    hintText: "Name of Exercise",
                                  ),
                                  style: TextStyle(
                                      fontSize: 13, fontFamily: 'Lato-2'),
                                ),
                              )
                            ],
                          ),
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
                                  Icons.repeat,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 16, top: 9.6),
                                width: 281,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  controller: context
                                      .watch<AddTrainingDetailsProvider>()
                                      .getExeRepsController,
                                  onChanged: (text) => context
                                      .read<AddTrainingDetailsProvider>()
                                      .setexeReps(text),
                                  decoration: InputDecoration(
                                    hintText: "No. of Reps",
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
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, top: 30, right: 10),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(130, 44),
                                    maximumSize: const Size(130, 44),
                                    padding: EdgeInsets.fromLTRB(18, 7, 15, 7),
                                    primary: Color(0xff000071),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25))),
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
                                            TrainerDboard()),
                                  );
                                },
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 30, right: 0, left: 72.7),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(130, 44),
                                    maximumSize: const Size(130, 44),
                                    padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
                                    primary: Color(0xffF36501),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25))),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.check),
                                      Text(
                                        "CONFIRM",
                                        style: TextStyle(
                                            fontFamily: 'Lato-1', fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                                onPressed: () {
                                  context
                                      .read<AddTrainingDetailsProvider>()
                                      .AddTrainingDetail(context);
                                },
                              ))
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ])));
  }
}
