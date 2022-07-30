import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_core/firebase_core.dart';

class AllLogin_provider extends ChangeNotifier {
  Future<void> allLogin(BuildContext context, String mobileNumber) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+919079953070',
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {},
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  //FOR MOB
  var mob = '';
  TextEditingController MobController = TextEditingController();
  TextEditingController get getMobController => MobController;

  setMob(String value) {
    mob = value;
    print('MOB === $mob');
  }

  // LOGIN
  Loginn(BuildContext context) {
    print('Mob no. === $mob');
  }
}
