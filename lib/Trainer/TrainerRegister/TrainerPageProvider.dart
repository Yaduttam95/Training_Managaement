import 'package:flutter/material.dart';

class TrainerPageProvider with ChangeNotifier {
  //FOR NAME
  var name = '';
  TextEditingController NameController = TextEditingController();
  TextEditingController get getNameController => NameController;
  setName(String value) {
    name = value;
    print('Name === $name');
  }

  //FOR DOB
  var dob = '';
  TextEditingController DOBController = TextEditingController();
  TextEditingController get getDOBController => DOBController;
  setDOB(String value) {
    dob = value;
    print('DOB === $dob');
  }

  //FOR AGE
  var age = '';
  TextEditingController AgeController = TextEditingController();
  TextEditingController get getAgeController => AgeController;
  setAge(String value) {
    age = value;
    print('Age === $age');
  }

  //FOR ADDRESS
  var address = '';
  TextEditingController AddressController = TextEditingController();
  TextEditingController get getAddressController => AddressController;
  setAddress(String value) {
    address = value;
    print('Address === $address');
  }

  //FOR CITY
  var city = '';
  TextEditingController CityController = TextEditingController();
  TextEditingController get getCityController => CityController;
  setCity(String value) {
    city = value;
    print('City === $city');
  }

  //FOR PINCODE
  var pincode = '';
  TextEditingController PinCodeController = TextEditingController();
  TextEditingController get getPinCodeController => PinCodeController;
  setPinCode(String value) {
    pincode = value;
    print('PinCode === $pincode');
  }

  //FOR state
  var statte = '';
  TextEditingController StatteController = TextEditingController();
  TextEditingController get getStatteController => StatteController;
  setStatte(String value) {
    statte = value;
    print('state === $statte');
  }

  //FOR MOB
  var mob = '';
  TextEditingController MobController = TextEditingController();
  TextEditingController get getMobController => MobController;
  setMob(String value) {
    mob = value;
    print('state === $mob');
  }

  // REGISTER TRAINER
  RegisterTrainer(BuildContext context) {
    print('Name === $name');
    print('DOB === $dob');
    print('AGE === $age');
    print('ADDRESS === $address');
    print('City === $city');
    print('PINCODE === $pincode');
    print('State === $statte');
    print('Mob no. === $mob');
  }
}
