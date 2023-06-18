import 'package:epay_flutter/route.dart';
import 'package:flutter/material.dart';

class camera extends StatefulWidget {
  const camera({super.key});

  @override
  State<camera> createState() => _cameraState();
}

class _cameraState extends State<camera> {
  List<String> itemsList = [
    'الطرق و الشوارع',
    'الفراغات و الحدائق العام',
    'الإنارة و المرافق الخدمية و اللوحات',
    'البحر'
  ];
  String? SelectedItem = 'الطرق و الشوارع';
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
        child: Column(
          children: [
            const Text(
              'Type de réclamation',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
              ),
              value: SelectedItem,
              items: itemsList
                  .map((item) => DropdownMenuItem(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      )))
                  .toList(),
              onChanged: (item) => setState(() => SelectedItem = item),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Ville',
                      prefixIcon: Icon(
                        Icons.location_city,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Adresse',
                      prefixIcon: Icon(
                        Icons.location_city_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              maxLines: 5,
              minLines: 2,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                hintText: 'Description',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: 150,
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
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RoutePage()));
                  },
                  child: const Text('Prendre une photo')),
            ),
          ],
        ),
      ),
    );
  }
}
