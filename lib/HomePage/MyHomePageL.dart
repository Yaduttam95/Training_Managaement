import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sports_training/Trainee/TraineeRegister/TraineeLogin.dart';

import '../Trainee/TraineeDBoard/TraineeDBoard.dart';
import '../Trainer/TrainerDboard.dart';

class MyHomePageL extends StatelessWidget {
  const MyHomePageL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        color: Colors.white,
        child: Stack(children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 40, left: 10, right: 10),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.4357,
                    // width: double.infinity,
                    ///////////////
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images2/hometop.png"),
                      ),
                    )
                    /////////////
                    ),
              ),
              //==

              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.50,
                    // width: MediaQuery.of(context).size.width,
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                      color: Color(0xff000071),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                    ),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: Text(
                              "Select Type",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(272, 44),
                                  maximumSize: const Size(272, 44),
                                  primary: Color(0xffF36501),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          TrainerDboard()),
                                );
                              },
                              child: const Text(
                                'TRAINER',
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'Lato-2'),
                              ),
                            ),
                          ),
                          ////////////////////////
                          //////////////////////
                          Padding(
                            padding: EdgeInsets.only(top: 49),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(272, 44),
                                  maximumSize: const Size(272, 44),
                                  primary: Color(0xffFFFFFF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          TraineeDBoard()),
                                );
                              },
                              child: const Text(
                                'TRAINEE',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Lato-1',
                                    color: Color(0xff000071)),
                              ),
                            ),
                          ),
                          ///////////////////
                          /////////////////
                        ],
                      ),
                    )),
              ),
            ],
          ),
          Center(
            child: Container(
              height: 15,
              width: 150,
              decoration: BoxDecoration(
                color: Color(0xffF36501),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          )
        ]),
      ),
    ));
  }
}
