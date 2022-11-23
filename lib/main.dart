import 'package:flutter/material.dart';
import 'dart:math';

class bar extends StatefulWidget {
  const bar({super.key});

  @override
  State<bar> createState() => _barState();
}

class _barState extends State<bar> {
  TextEditingController? mController = TextEditingController();

  double? m;

  double? javob = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 70),
            child: Container(
              child: const Text(
                'Faktorial',
                style: TextStyle(color: Colors.greenAccent, fontSize: 20),
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
                  color: const Color.fromARGB(255, 238, 235, 235)),
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
              image: AssetImage('assets/images/manometr.gif'),
            ),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    m = double.parse(mController!.text);
                    javob = int as double?;
                    for (int i = 1; i <= mController; i++) {
                      ;
                      mController = i as TextEditingController?;
                    }
                  });
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
              "Javob :$javob bar",
              style: TextStyle(fontSize: 30, color: Colors.green),
            ),
          ))
        ]),
      ),
    );
  }
}
