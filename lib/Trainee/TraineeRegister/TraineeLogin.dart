import 'package:flutter/material.dart';
import 'TraineeLoginForm.dart';

class TraineeLogin extends StatelessWidget {
  const TraineeLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('REGISTER AS A TRAINEE'),
          backgroundColor: Colors.orange),
      body: TraineeLoginForm(),
    );
  }
}
