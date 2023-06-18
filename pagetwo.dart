import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class Pagetwo extends StatefulWidget {
  const Pagetwo({Key? key}) : super(key: key);

  @override
  _PagetwoState createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
  final TextEditingController _carteIdentiteController =
      TextEditingController();

  String _errorMessage = '';

  @override
  void dispose() {
    _carteIdentiteController.dispose();
    super.dispose();
  }

  void _onPressed() {
    final carteIdentite = _carteIdentiteController.text.trim();

    if (carteIdentite == '123456789') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const payer()),
      );
    } else {
      setState(() {
        _errorMessage = 'Vous n\avez pas une infraction';
      });
    }
  }

//cette page pour voir l'infraction
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bledi",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 6, 3, 38),
      ),
      backgroundColor: Colors.grey,
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
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: _carteIdentiteController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Carte d'identité",
                      prefixIcon: Icon(
                        Icons.person,
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
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: _carteIdentiteController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Numéro de Matricule",
                      prefixIcon: Icon(Icons.numbers, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  minimumSize: Size(300, 50),
                ),
                onPressed: _onPressed,
                child: const Text(
                  "Valider",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            if (_errorMessage.isNotEmpty)
              Text(
                _errorMessage,
                style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ]),
        ),
      ),
    );
  }
}

class payer extends StatefulWidget {
  const payer({super.key});

  @override
  State<payer> createState() => _payerState();
}

//cette page c'est pour payer

class _payerState extends State<payer> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text(
            "Bledi",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 6, 3, 38),
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
              Container(
                child: const Text(
                  'استعمال هاتف الجوال أثناء القيادة',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                child: const Text(
                  'المبلغ:60 دينار',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
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
                        hintText: 'Numéro de CIN',
                        prefixIcon: Icon(
                          Icons.numbers,
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
                        hintText: 'Numéro de carte',
                        prefixIcon: Icon(
                          Icons.lock,
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
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Montant(0.00dt)',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text(
                    "Carte e-dinar",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text(
                    "MasterCard",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.success,
                    animType: AnimType.topSlide,
                    showCloseIcon: true,
                    title: "Paiemant Términé",
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                },
                child: Text('payer'),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                      Size(100, 50)), // Set minimum size
                  padding: MaterialStateProperty.all(
                      EdgeInsets.all(10)), // Set padding
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(
                      255, 23, 123, 205)), // Set background color
                ),
              ),
            ],
          ),
        ));
  }
}
