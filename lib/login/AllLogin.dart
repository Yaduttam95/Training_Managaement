import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sports_training/login/AllLogin_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../GetOTP/GetOTP.dart';
import '../HomePage/MyHomePageL.dart';
import '../Trainer/TrainerDboard.dart';
import '../Trainer/TrainerRegister/TrainerPage.dart';
import '../Trainer/TrainerRegister/TrainerPageProvider.dart';

class AllLogin extends StatelessWidget {
  const AllLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var valuefirst = false;
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1, 45, 1, 2),
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30,
                        color: Color(0xff000071),
                        fontFamily: 'Lato-1',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 9, 1, 0),
                    child: Text(
                      "We are glad you are here!",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 13,
                        color: Color(0xff737373),
                        fontFamily: 'Lato-2',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // height: 25,
              padding: const EdgeInsets.only(left: 26, right: 28, top: 72),
              child: Container(
                height: 25,
                width: 298,
                decoration: BoxDecoration(
                    // color: Colors.blue,
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
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                    //===========//
                    Container(
                      padding: EdgeInsets.only(left: 7, top: 8.6),
                      // color: Colors.red,
                      // height: 25,
                      width: 273,
                      child: TextField(
                        controller:
                            context.watch<AllLogin_provider>().getMobController,
                        onChanged: (text) =>
                            context.read<AllLogin_provider>().setMob(text),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Enter Your Mobile No.",
                        ),
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Lato-1',
                            color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 92),
              child: Container(
                  child: Column(
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(343, 44),
                        maximumSize: const Size(343, 44),
                        primary: Color(0xffF36501),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22))),
                    onPressed: () {
                      context.read<AllLogin_provider>().Loginn(context);

                      var mobNo = context.read<AllLogin_provider>().mob;

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => GetOTP(mobNo)),
                      );
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 15, fontFamily: 'Lato-2'),
                    ),
                  ),
                  //===//
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 24, 0, 24),
                    child: Container(
                      height: 21,
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: Container(
                              height: 2,
                              width: double.infinity,
                              color: Color(0xff000071),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 21,
                              width: 21,
                              decoration: BoxDecoration(
                                  color: Color(0xff000071),
                                  borderRadius: BorderRadius.circular(21)),
                              child: Center(
                                child: Text(
                                  "OR",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xffFFFFFF),
                                      fontFamily: 'Lato-2'),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //==//
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(343, 44),
                        maximumSize: const Size(343, 44),
                        primary: Color(0xff000071),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => TrainerPage()),
                      );
                    },
                    child: const Text(
                      'REGISTER',
                      style: TextStyle(fontSize: 15, fontFamily: 'Lato-2'),
                    ),
                  ),
                  //==//
                ],
              )),
            ),
          ],
        ),
        // ),
      ),
    );
  }
}
