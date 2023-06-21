import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: bar(),
  ));
}

class bar extends StatefulWidget {
  const bar({super.key});

  @override
  State<bar> createState() => _barState();
}

class _barState extends State<bar> {
  TextEditingController? mController = TextEditingController();

  int m = 0;

  BigInt javob = BigInt.from(1);

  void calc() {
    m = int.parse(mController!.text);

    for (int i = 1; i <= m; i++) {
      setState(() {
        javob = javob * BigInt.from(i);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 70),
            child: Container(
              child: Center(
                child: const Text(
                  'Faktorial',
                  style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
            ),
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color.fromARGB(92, 212, 188, 188)),
              child: TextField(
                controller: mController,
                decoration: InputDecoration(
                    hintText: "  Faktorialni topish  formulasi  ",
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(157, 5, 182, 85)),
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(color: Colors.teal))),
              ),
            ),
          ),
          Container(
            child: Image(
              image: AssetImage('assets/images/orig.gif'),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  javob = BigInt.from(1);
                  calc();
                },
                child: const Text("Hisoblash")),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Javob : $javob ",
                style: TextStyle(fontSize: 30, color: Colors.green),
              ),
            ),
          ),
        ]),
      ),backgroundColor: Color.fromARGB(31, 7, 7, 7),
    );
  }
}
