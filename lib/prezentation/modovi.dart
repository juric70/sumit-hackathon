import 'package:flutter/material.dart';
import 'package:sumit_hack/main.dart';

class Modovi extends StatelessWidget {
  const Modovi({
    required this.image,
    required this.text,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final String image;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScaffoldWithBackground(
        child: Stack(children: [
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: GestureDetector(
              onTap: onTap,
              child: const Image(
                image: AssetImage('images/stop.png'),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                const Image(
                  image: AssetImage('images/dokle.png'),
                ),
                const SizedBox(
                  height: 105,
                ),
                Column(
                  children: [
                    Center(
                      child: Image.asset(image),
                    ),
                    Container(
                      child: Text(
                        text,
                        style: const TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
