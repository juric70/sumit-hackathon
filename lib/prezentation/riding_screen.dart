// menu_screen.dart
import 'package:flutter/material.dart';
import 'package:sumit_hack/main.dart';
import 'package:sumit_hack/prezentation/modovi.dart';

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
  final List<String> sendslike = [
    'images/warning.png',
    'images/odredište.png',
    'images/burnedCal.png',
    'images/asistent.png',
    'images/asistent.png',
  ];
  final List<String> sendtekst = [
    'Pritisak u gumama je nizak',
    'Stigli ste na odredišt',
    'Sagorjeli ste zadovoljavajući broj kalorija',
    'Parkirajte na sigurno i provjerite puls',
    'Još samo 154 kalorije',
  ];

  RidingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScaffoldWithBackground(
        child: Stack(
          children: [
            Positioned(
              top: 10,
              child: SizedBox(
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
                    Svjetla(),
                    Expanded(
                      child: ListView.builder(
                        itemCount: opcije.length - 1,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Center(
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage(slike[index + 1]),
                                    width: 80,
                                    height: 80,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    opcije[index + 1],
                                    style: const TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              print('odabrali ste ${opcije[index]}');

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Modovi(
                                    image: sendslike[index],
                                    text: sendtekst[index],
                                    onTap: () {
                                      Navigator.of(context).popUntil((route) => route.settings.name == '/menuscreen');
                                    },
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: InkWell(
                onTap: () {
                  print("object");
                  Navigator.of(context).popUntil((route) => route.settings.name == '/menuscreen');
                },
                child: const Image(
                  image: AssetImage('images/stop.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Svjetla extends StatefulWidget {
  Svjetla({
    Key? key,
  }) : super(key: key);

  final List<String> text = [
    'Svjetla jako',
    'Svjetla srednje',
    'Svjetla ugašena',
  ];

  final List<String> slike = [
    'images/lights.png',
    'images/lightsMid.png',
    'images/lightsOff.png',
  ];

  @override
  State<Svjetla> createState() => _SvjetlaState();
}

class _SvjetlaState extends State<Svjetla> {
  bool isExpanded = false;
  int settingIndex = 0;

  @override
  Widget build(BuildContext context) {
    if (isExpanded) {
      return GestureDetector(
        onTap: () {
          isExpanded = !isExpanded;
          setState(() {});
        },
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage(widget.slike[settingIndex]),
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    widget.text[settingIndex],
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        settingIndex = 0;
                        setState(() {});
                      },
                      icon: Image.asset('images/lightsFull.png'),
                    ),
                    IconButton(
                      onPressed: () {
                        settingIndex = 1;
                        setState(() {});
                      },
                      icon: Image.asset('images/lightsMid.png'),
                    ),
                    IconButton(
                      onPressed: () {
                        settingIndex = 2;
                        setState(() {});
                      },
                      icon: Image.asset('images/lightsOff.png'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }
    return ListTile(
      title: Center(
        child: Row(
          children: [
            Image(
              image: AssetImage(widget.slike[settingIndex]),
              width: 80,
              height: 80,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              widget.text[settingIndex],
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
        isExpanded = !isExpanded;
        setState(() {});
      },
    );
  }
}
