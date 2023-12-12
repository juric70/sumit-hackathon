import 'package:flutter/material.dart';

class SimulirajUpozorenje extends StatelessWidget {
  const SimulirajUpozorenje({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Prikažu upozorenje"),
            ),
          ),
        ],
      ),
    );
  }
}
