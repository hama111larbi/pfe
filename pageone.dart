import 'package:epay_flutter/pagetwo.dart';
import 'package:epay_flutter/sonede.dart';
import 'package:epay_flutter/steg.dart';
import 'package:flutter/material.dart';

class pageone extends StatefulWidget {
  const pageone({Key? key}) : super(key: key);

  //c'est la page home

  @override
  _pageoneState createState() => _pageoneState();
}

class _pageoneState extends State<pageone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Bledi",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 6, 3, 38),
      ),
      body: SafeArea(
        child: Container(
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 63, 64, 64),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Pagetwo()));
                    },
                    icon: Icon(Icons.car_crash_outlined),
                    label: const Text(
                      "Les infractions",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 80),
                      padding: EdgeInsets.all(20), // Set padding
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 63, 64, 64),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const sonede()));
                    },
                    icon: Icon(Icons.water),
                    label: const Text(
                      "Sonede",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 80),
                      padding: EdgeInsets.all(20), // Set padding
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 63, 64, 64),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const steg()));
                    },
                    icon: Icon(Icons.light),
                    label: const Text(
                      "Steg",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 80),
                      padding: EdgeInsets.all(20), // Set padding
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
