import 'package:flutter/material.dart';

class TraineeProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Color(0xffF36501),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image(image: AssetImage("assets/images2/TraineeProfile.png")),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: Container(
                        child: Column(
                      children: <Widget>[
                        Text(
                          "Hello!",
                          style: TextStyle(
                              color: Color(0xffDCDCFC),
                              fontSize: 20,
                              fontFamily: 'Poppins'),
                        ),
                        Text(
                          "Ravi Varma",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                              fontFamily: 'Poppins'),
                        )
                      ],
                    )),
                  ),
                )
              ],
            ),
            Container(
              height: 370,
              //color: Colors.yellowAccent,
              padding: EdgeInsets.all(10),
              child: ListView(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom:
                            BorderSide(width: 1.0, color: Color(0xff143F6B)),
                        left: BorderSide(width: 1.0, color: Color(0xff143F6B)),
                        right: BorderSide(width: 1.0, color: Color(0xff143F6B)),
                      ),
                      // color: Colors.red,
                    ),
                    height: 50,
                    padding: EdgeInsets.all(5),
                    child: Row(children: <Widget>[
                      Container(
                          height: 35,
                          color: Color(0xffF36501),
                          child: Icon(
                            Icons.person_outline,
                            size: 30,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "RAVI VARMA",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ]),
                  ),
                ),
                /////////////////
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom:
                            BorderSide(width: 1.0, color: Color(0xff143F6B)),
                        left: BorderSide(width: 1.0, color: Color(0xff143F6B)),
                        right: BorderSide(width: 1.0, color: Color(0xff143F6B)),
                      ),
                      // color: Colors.red,
                    ),
                    height: 50,
                    padding: EdgeInsets.all(5),
                    child: Row(children: <Widget>[
                      Container(
                          height: 35,
                          color: Color(0xffF36501),
                          child: Icon(
                            Icons.numbers_outlined,
                            size: 30,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "108565",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ]),
                  ),
                ),
                //////////////////////
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom:
                            BorderSide(width: 1.0, color: Color(0xff143F6B)),
                        left: BorderSide(width: 1.0, color: Color(0xff143F6B)),
                        right: BorderSide(width: 1.0, color: Color(0xff143F6B)),
                      ),
                      // color: Colors.red,
                    ),
                    height: 50,
                    padding: EdgeInsets.all(5),
                    child: Row(children: <Widget>[
                      Container(
                          height: 35,
                          color: Color(0xffF36501),
                          child: Icon(
                            Icons.mail_outline,
                            size: 30,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "ravivarma77@gmail.com",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ]),
                  ),
                ),
                ///////////////////////
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom:
                            BorderSide(width: 1.0, color: Color(0xff143F6B)),
                        left: BorderSide(width: 1.0, color: Color(0xff143F6B)),
                        right: BorderSide(width: 1.0, color: Color(0xff143F6B)),
                      ),
                      // color: Colors.red,
                    ),
                    height: 50,
                    padding: EdgeInsets.all(5),
                    child: Row(children: <Widget>[
                      Container(
                          height: 35,
                          color: Color(0xffF36501),
                          child: Icon(
                            Icons.sports,
                            size: 30,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "FOOTBALL",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ]),
                  ),
                ),
                ////////////////////////
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom:
                            BorderSide(width: 1.0, color: Color(0xff143F6B)),
                        left: BorderSide(width: 1.0, color: Color(0xff143F6B)),
                        right: BorderSide(width: 1.0, color: Color(0xff143F6B)),
                      ),
                      // color: Colors.red,
                    ),
                    height: 50,
                    padding: EdgeInsets.all(5),
                    child: Row(children: <Widget>[
                      Container(
                          height: 35,
                          color: Color(0xffF36501),
                          child: Icon(
                            Icons.check_box_outlined,
                            size: 30,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "48 OUT OF 50",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ]),
                  ),
                ),
                ////////////////////////////////
              ]),
            )
          ],
        ),
      ),
    );
  }
}
