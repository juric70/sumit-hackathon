import 'package:flutter/material.dart';
import 'package:sumit_hack/prezentation/menu_screen.dart';
import 'package:sumit_hack/prezentation/riding_screen.dart';
import 'package:sumit_hack/prezentation/simulator.dart';
import 'package:sumit_hack/prezentation/first_screen.dart';
import 'package:sumit_hack/prezentation/start_ride.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Ovo je korijenski widget aplikacije.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DOKL°E',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // Postavite prvi screen kao početni screen
      home: const FirstScreen(),
      // Definirajte rutu za drugi screen
      routes: {
        '/menuscreen': (context) => MenuScreen(),
        '/ridingscreen': (context) => RidingScreen(),
        '/startride': (context) => const StartRide(),
      },
    );
  }
}

// Prilagođeni widget koji sadrži Scaffold s Container kao tijelom
class ScaffoldWithBackground extends StatelessWidget {
  // Widget koji će biti dijete Containera
  final Widget child;

  const ScaffoldWithBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Postavite sliku kao DecorationImage s opcijom fit: BoxFit.cover
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/background.png'),
          ),
        ),
        child: child,
      ),
    );
  }
}
