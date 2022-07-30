import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'TraineeLoginForm.dart';

class TraineeLoginFormState extends State<TraineeLoginForm> {
  final _formKey = GlobalKey<FormState>();
  /////////////////
  String dropdownvalue = 'Select Your Gender';

  var items = [
    'Select Your Gender',
    'Male',
    'Female',
    'Rather Not Say',
  ];
  ////////////////

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.45), BlendMode.dstATop),
                image: AssetImage("assets/images/traineeloginback.jpg"),
              ),
            ),
          ),
          Container(
            height: 440,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 237, 241, 237).withOpacity(0.7),
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: EdgeInsets.fromLTRB(10, 97, 10, 20),
            padding: EdgeInsets.fromLTRB(5, 20, 5, 10),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Center(
                  child: Container(
                    child: Text(
                      "Enter your Details",
                      style: TextStyle(fontSize: 25, fontFamily: 'Raleway11'),
                    ),
                  ),
                ),
                /////
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      icon: const Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.black,
                      ),
                      hintText: 'Enter your name',
                      labelText: 'Name',
                      labelStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      hintStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ////////////////

                ///////////////
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      icon: const Icon(
                        Icons.keyboard,
                        size: 30,
                        color: Colors.black,
                      ),
                      hintText: 'Enter your Enrollment number',
                      labelText: 'Enrollment No.',
                      labelStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      hintStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ////////////////////
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      icon: const Icon(
                        Icons.mail,
                        size: 30,
                        color: Colors.black,
                      ),
                      hintText: 'Enter your Email',
                      labelText: 'Email',
                      labelStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      hintStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                /////////////////
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: const Icon(
                        Icons.password,
                        size: 30,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                      labelStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      hintStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                //////////////

                /////////////
                Container(
                    padding:
                        const EdgeInsets.only(left: 150.0, top: 2.0, right: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent,
                      ),
                      child: Text('Submit'),
                      onPressed: () {
                        print("Hello");
                      },
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
