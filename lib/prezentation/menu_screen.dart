// menu_screen.dart
import 'package:flutter/material.dart';
import 'package:sumit_hack/main.dart';

class MenuScreen extends StatelessWidget {
  final List<String> opcije = [
    'Žurim',
    'Trening',
    'Istraživanje grada',
    'Izaberi mode',
  ];
  final List<String> slike = [
    'images/rush.png',
    'images/burnCalories.png',
    'images/ExploreCity.png',
    'images/chooseMode.png',
  ];

  MenuScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScaffoldWithBackground(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Image(image: AssetImage('images/menu.png')),
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
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/startride');
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
