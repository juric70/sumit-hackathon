// menu_screen.dart
import 'package:flutter/material.dart';
import 'package:sumit_hack/main.dart';

class RidingScreen extends StatelessWidget {
  final List<String> opcije = [
    'Svjetla',
    'Terapeut',
    'PSI',
    'kcal',
    'bpm',
    'settings',
  ];
  final List<String> slike = [
    'images/lights.png',
    'images/terapeut.png',
    'images/psi.png',
    'images/burnCalories.png',
    'images/bpm.png',
    'images/settings.png',
  ];

  RidingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScaffoldWithBackground(
        child: Stack(
          children: [
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: Container(
                child: Image(image: AssetImage('images/stop.png')),
              ),
            ),
            Positioned(
              top: 10,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Image(
                      image: AssetImage('images/dokle.png'),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: opcije.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Center(
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage(slike[index]),
                                    width: 80,
                                    height: 80,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    opcije[index],
                                    style: const TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              print('odabrali ste ${opcije[index]}');
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
