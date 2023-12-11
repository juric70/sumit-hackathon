import 'package:flutter/material.dart';
import 'package:sumit_hack/main.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBackground(
        child: Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/menuscreen');
        },
        child: Image.asset('images/logo.png'),
      ),
    ));
  }
}
