import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../NavBars/NavBarTrainer.dart';
import '../TrainerDboard.dart';
import 'ExpertiseAndLimitationProvider.dart';

class ExpertiseAndLimitation extends StatefulWidget {
  @override
  ExpertiseAndLimitationstate createState() => ExpertiseAndLimitationstate();
}

class ExpertiseAndLimitationstate extends State<ExpertiseAndLimitation> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    drawer:
    NavBarTrainer();
    return Scaffold(
        key: _scaffoldKey,
        drawer: new NavBarTrainer(),
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
                padding: EdgeInsets.only(top: 0, left: 4, bottom: 12),
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
                      "Expertise & Limitation",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins'),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40, right: 10, top: 4),
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
                "Enter the Following Details",
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 17, color: Colors.white),
              ),
            ),
          ),
          Container(
              height: 600,
              child: ListView(
                children: <Widget>[
                  ///////////ENROLLMENT NUMBER/////////////////
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 21, left: 27, right: 27, bottom: 23),
                    child: Container(
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
                              controller: context
                                  .watch<ExpertiseAndLimitationProvider>()
                                  .getEnrollController,
                              onChanged: (text) => context
                                  .read<ExpertiseAndLimitationProvider>()
                                  .setStuEnroll(text),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  hintText: "Enter enrollment no.",
                                  hintStyle: TextStyle(color: Colors.black)),
                              style:
                                  TextStyle(fontSize: 13, fontFamily: 'Lato-2'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(27, 0, 27, 25),
                    child: TextField(
                      controller: context
                          .watch<ExpertiseAndLimitationProvider>()
                          .getStrengthController,
                      onChanged: (text) => context
                          .read<ExpertiseAndLimitationProvider>()
                          .setStrength(text),
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Strength...',
                        hintStyle: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Lato-2',
                            color: Colors.black),
                      ),
                      maxLines: 6,
                      style: TextStyle(fontSize: 13, fontFamily: 'Lato-2'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(27, 0, 27, 25),
                    child: TextField(
                      controller: context
                          .watch<ExpertiseAndLimitationProvider>()
                          .getWeaknessController,
                      onChanged: (text) => context
                          .read<ExpertiseAndLimitationProvider>()
                          .setWeakness(text),
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Weakness...',
                          hintStyle: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Lato-2',
                              color: Colors.black)),
                      maxLines: 6,
                      style: TextStyle(fontSize: 13, fontFamily: 'Lato-2'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, right: 0),
                    child: Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 16, top: 30, right: 10),
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
                                          TrainerDboard()),
                                );
                              },
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 30, right: 16, left: 90.7),
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
                                    Icon(Icons.system_update_alt),
                                    Text(
                                      " UPDATE",
                                      style: TextStyle(
                                          fontFamily: 'Lato-1', fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                              onPressed: () {

                                context
                                                  .read<ExpertiseAndLimitationProvider>()
                                                  .updateRecord(context);
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (BuildContext context) =>
                                //           TrainerDboard()),
                                // );
                              },
                            ))
                      ],
                    ),
                  )
                ],
              ))
        ]))));
  }
}
