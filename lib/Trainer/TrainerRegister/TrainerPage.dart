import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:sports_training/Trainer/TrainerRegister/OnSubmit.dart';

import '../../login/AllLogin.dart';
import '../TrainerDboard.dart';
import 'TrainerPageProvider.dart';

class TrainerPage extends StatefulWidget {
  @override
  TrainerPageState createState() {
    return TrainerPageState();
  }
}

class TrainerPageState extends State<TrainerPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Scaffold(
          body: SafeArea(
              child: Container(
            child: Column(
              children: <Widget>[
                _top(),
                _heading(),
                Expanded(child: _detailsarea()),
                _bottomarea(),
              ],
            ),
          )),
        ));
  }
}

class _top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      width: double.infinity,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
      ),
    );
  }
}

class _heading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Center(
          child: Container(
            padding: EdgeInsets.only(top: 22, bottom: 46),
            child: Text(
              "Trainer Register",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 21),
            ),
          ),
        ));
  }
}

class _detailsarea extends StatefulWidget {
  @override
  _detailsareastate createState() => _detailsareastate();
}

class _detailsareastate extends State<_detailsarea> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 26, right: 28),
          child: Container(
            height: 25,
            width: 50,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xff143F6B)))),
            child: Row(
              children: <Widget>[
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Color(0xffF36501),
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.64, top: 11.6),
                  width: 313,
                  child: TextField(
                    controller:
                        context.watch<TrainerPageProvider>().getNameController,
                    onChanged: (text) =>
                        context.read<TrainerPageProvider>().setName(text),
                    decoration: InputDecoration(
                      hintText: "Enter Your Name",
                    ),
                    style: TextStyle(fontSize: 13),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 28, left: 26, right: 28),
          child: Container(
            height: 25,
            width: 50,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xff143F6B)))),
            child: Row(
              children: <Widget>[
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Color(0xffF36501),
                  ),
                  child: Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.64, top: 10.6),
                  width: 313,
                  child: TextField(
                    controller:
                        context.watch<TrainerPageProvider>().getDOBController,
                    onChanged: (text) =>
                        context.read<TrainerPageProvider>().setDOB(text),
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      hintText: "Enter Your DOB",
                    ),
                    style: TextStyle(fontSize: 13),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 28, left: 26, right: 28),
          child: Container(
            height: 25,
            width: 50,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xff143F6B)))),
            child: Row(
              children: <Widget>[
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Color(0xffF36501),
                  ),
                  child: Icon(
                    Icons.calendar_month_sharp,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.64, top: 10.6),
                  width: 313,
                  child: TextField(
                    controller:
                        context.watch<TrainerPageProvider>().getAgeController,
                    onChanged: (text) =>
                        context.read<TrainerPageProvider>().setAge(text),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter Your Age",
                    ),
                    style: TextStyle(fontSize: 13),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 28, left: 26, right: 28),
          child: Container(
            height: 25,
            width: 50,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xff143F6B)))),
            child: Row(
              children: <Widget>[
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Color(0xffF36501),
                  ),
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.64, top: 10.6),
                  width: 313,
                  child: TextField(
                    controller: context
                        .watch<TrainerPageProvider>()
                        .getAddressController,
                    onChanged: (text) =>
                        context.read<TrainerPageProvider>().setAddress(text),
                    decoration: InputDecoration(
                      hintText: "Enter Your Address",
                    ),
                    style: TextStyle(fontSize: 13),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 28, left: 26, right: 28),
          child: Container(
            height: 25,
            width: 50,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xff143F6B)))),
            child: Row(
              children: <Widget>[
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Color(0xffF36501),
                  ),
                  child: Icon(
                    Icons.map,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.64, top: 10.6),
                  width: 313,
                  child: TextField(
                    controller:
                        context.watch<TrainerPageProvider>().getCityController,
                    onChanged: (text) =>
                        context.read<TrainerPageProvider>().setCity(text),
                    decoration: InputDecoration(
                      hintText: "Enter Your City",
                    ),
                    style: TextStyle(fontSize: 13),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 28, left: 26, right: 28),
          child: Container(
            height: 25,
            width: 50,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xff143F6B)))),
            child: Row(
              children: <Widget>[
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Color(0xffF36501),
                  ),
                  child: Icon(
                    Icons.fiber_pin_outlined,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.64, top: 10.6),
                  width: 313,
                  child: TextField(
                    controller: context
                        .watch<TrainerPageProvider>()
                        .getPinCodeController,
                    onChanged: (text) =>
                        context.read<TrainerPageProvider>().setPinCode(text),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter PINCODE",
                    ),
                    style: TextStyle(fontSize: 13),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 28, left: 26, right: 28),
          child: Container(
            height: 25,
            width: 50,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xff143F6B)))),
            child: Row(
              children: <Widget>[
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Color(0xffF36501),
                  ),
                  child: Icon(
                    Icons.map_outlined,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.64, top: 10.6),
                  width: 313,
                  child: TextField(
                    controller: context
                        .watch<TrainerPageProvider>()
                        .getStatteController,
                    onChanged: (text) =>
                        context.read<TrainerPageProvider>().setStatte(text),
                    decoration: InputDecoration(
                      hintText: "Enter Your State",
                    ),
                    style: TextStyle(fontSize: 13),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 28, left: 26, right: 28),
          child: Container(
            height: 25,
            width: 50,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xff143F6B)))),
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
                Container(
                  padding: EdgeInsets.only(left: 15.64, top: 10.6),
                  width: 313,
                  child: TextField(
                    controller:
                        context.watch<TrainerPageProvider>().getMobController,
                    onChanged: (text) =>
                        context.read<TrainerPageProvider>().setMob(text),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter Mobile No.",
                    ),
                    style: TextStyle(fontSize: 13),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _bottomarea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            context.read<TrainerPageProvider>().RegisterTrainer(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => OnSubmit()),
            );
          },
          child: const Text(
            'SUBMIT',
            style: TextStyle(fontSize: 15, fontFamily: 'Lato-2'),
          ),
        ),
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
              MaterialPageRoute(builder: (BuildContext context) => AllLogin()),
            );
          },
          child: const Text(
            'LOGIN',
            style: TextStyle(fontSize: 15, fontFamily: 'Lato-2'),
          ),
        ),
      ],
    ));
  }
}
