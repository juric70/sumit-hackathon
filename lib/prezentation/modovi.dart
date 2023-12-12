import 'package:flutter/material.dart';
import 'package:sumit_hack/main.dart';

class Modovi extends StatefulWidget {
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
  State<Modovi> createState() => _ModoviState();
}

class _ModoviState extends State<Modovi> {
  int countdown = 3;

  @override
  void initState() {
    counter();
    super.initState();
  }

  Future counter() async {
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pop();
  }

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
              onTap: widget.onTap,
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
                  height: 15,
                ),
                const Image(
                  image: AssetImage('images/dokle.png'),
                ),
                Column(
                  children: [
                    Center(
                      child: Image.asset(widget.image),
                    ),
                    Text(
                      widget.text,
                      style: const TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
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
