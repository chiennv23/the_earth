import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/planet.dart';

class PlanetPage extends StatefulWidget {
  const PlanetPage({Key? key}) : super(key: key);

  @override
  State<PlanetPage> createState() => _PlanetPageState();
}

class _PlanetPageState extends State<PlanetPage> {
  bool isInteracting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                'https://i.pinimg.com/736x/ac/be/49/acbe49c3f106d163937b8c05c4d48b05.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Opacity(
              opacity: 0.5,
              child: Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(colors: [
                    Color.fromARGB(255, 49, 88, 116),
                    Color.fromARGB(255, 4, 11, 34),
                  ], radius: 1),
                ),
              ),
            ),
            Planet(
              key: Key('Planet1'),
              interative: false,
            )
          ],
        ),
      ),
    );
  }
}
