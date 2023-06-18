import 'package:flutter/material.dart';

class infraction extends StatefulWidget {
  const infraction(BuildContext context, {super.key});

  @override
  State<infraction> createState() => _infractionState();
}

class _infractionState extends State<infraction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(
          'Bledi',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 6, 3, 38),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.2,
                0.5,
                0.8,
                0.7,
              ],
              colors: [
                Color.fromRGBO(227, 242, 253, 1),
                Color.fromRGBO(187, 222, 251, 1),
                Color.fromRGBO(144, 202, 249, 1),
                Color.fromRGBO(100, 181, 246, 1),
              ]),
        ),
        child: const Text('استعمال الهاتف الجوال أثناء السياقة'),
      ),
    );
  }
}
