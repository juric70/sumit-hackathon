import 'package:flutter/material.dart';
import 'dart:async';

import 'package:sumit_hack/main.dart';

class StartRide extends StatefulWidget {
  @override
  _StartRideState createState() => _StartRideState();
}

class _StartRideState extends State<StartRide> {
  late Timer _timer;
  int _counter = 3;
  String _displayText = '3';
  bool _showImage = true;

  @override
  void initState() {
    super.initState();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
          _displayText = _counter.toString();
        } else {
          _timer.cancel();
          _displayText = 'Start';
          Timer(Duration(seconds: 2), () {
            Navigator.pushNamed(context, '/ridingscreen');
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBackground(
      child: GestureDetector(
        onTap: () {
          _showImage = false;
          _startTimer();
          setState(() {});
        },
        child: Center(
          child: _showImage
              ? Image.asset(
                  'images/startBtn.png', // Replace with your image path
                  fit: BoxFit.cover,
                )
              : Text(
                  _displayText,
                  style: TextStyle(fontSize: 80, color: Colors.white),
                ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
