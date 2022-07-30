import 'package:flutter/material.dart';
import 'package:sports_training/login/AllLogin.dart';

class OnSubmit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Scaffold(
          body: SafeArea(
              child: Container(
                  color: Color(0xffF36501),
                  child: Column(children: <Widget>[
                    _imagge(),
                    _thanks(),
                    _executive(),
                    _donebutton(),
                  ]))),
        ));
  }
}

class _imagge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(top: 164),
      child: Image(image: AssetImage("assets/images2/onsubmit.png")),
    ));
  }
}

class _thanks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(top: 48),
      child: Text(
        "Thanks for Registration",
        style:
            TextStyle(fontFamily: 'Lato-1', fontSize: 20, color: Colors.white),
      ),
    ));
  }
}

class _executive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Container(
        alignment: Alignment.center,
        width: 206,
        child: Text(
          textAlign: TextAlign.center,
          "Our executive will call you shortly.",
          style: TextStyle(
              fontFamily: 'Lato-1', fontSize: 20, color: Colors.black),
        ),
      ),
    ));
  }
}

class _donebutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 106),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(343, 44),
            maximumSize: const Size(343, 44),
            primary: Color(0xff000071),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22))),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) => AllLogin()),
          );
        },
        child: const Text(
          'DONE',
          style: TextStyle(
              fontSize: 15, fontFamily: 'Lato-2', color: Color(0xffF9D371)),
        ),
      ),
    );
  }
}
