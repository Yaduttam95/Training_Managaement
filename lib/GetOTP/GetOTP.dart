import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../HomePage/MyHomePageL.dart';

class GetOTP extends StatefulWidget {
  GetOTP(this.mobNo);
  final String mobNo;
  @override
  GetOTPstate createState() => GetOTPstate(mobNo);
}

class GetOTPstate extends State<GetOTP> {
  GetOTPstate(this.mobNo);
  final String mobNo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    "OTP",
                    style: TextStyle(fontSize: 21, fontFamily: 'Lato-1'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Verify your Mobile Number",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff143F6B),
                      fontFamily: 'Lato-2',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 35),
                  child: Text(
                    "A 4-digit OTP was sent on " + mobNo,
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Lato-2',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Countdown(
                    // controller: _controller,
                    seconds: 60,
                    build: (_, double time) => Text(
                      time.toString(),
                      style: TextStyle(
                          fontSize: 21,
                          fontFamily: 'Poppinsb',
                          color: Color(0xffD93C2C)),
                    ),
                    // interval: Duration(milliseconds: 100),
                    // onFinished: () {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     SnackBar(
                    //       content: Text('OTP RESENT!!'),
                    //     ),
                    //   );
                    // },
                  ),
                ),
              ]),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PinEntryTextField(
                  onSubmit: (String pin) {
                    ///////////////////////////
                    Navigator.pushReplacement<void, void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const MyHomePageL(),
                      ),
                    );
                    ///////////////////////////
                  }, // end onSubmit
                ), // end PinEntryTextField()
              ), // end Padding()
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 23),
                      child: Text(
                        "Didn't recieve anything ?",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff000099),
                            fontFamily: 'Lato-1'),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 0, bottom: 16),
                        child: InkWell(
                          onTap: () {
                            print("Hello");
                          },
                          child: Container(
                            child: Text(
                              "Resend new code.",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff193CE8),
                                  fontFamily: 'Lato-1'),
                            ),
                          ),
                        )
                        //////////////////////////////////////////////////////////////////////
                        )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 44),
                      maximumSize: const Size(100, 44),
                      primary: Color(0xffF36501),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const MyHomePageL()),
                    );
                  },
                  child: Text(
                    "SUBMIT",
                    style: TextStyle(fontSize: 15, fontFamily: 'Lato-1'),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
