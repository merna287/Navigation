import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculat(),
    );
  }
}

class Calculat extends StatefulWidget {
  const Calculat({super.key});

  @override
  State<Calculat> createState() => _CalculatState();
}

class _CalculatState extends State<Calculat> {
  //writing avaiable
  var num1Controller = TextEditingController();
  var num2Controller = TextEditingController();
  double result = 0;
  void calculate(String operation) {
    double? num1 = double.tryParse(num1Controller.text);
    double? num2 = double.tryParse(num2Controller.text);

    if (num1 == null || num2 == null) {
      setState(() {
        result = 0;
      });
      return;
    }

    setState(() {
      if (operation == '+') {
        result = num1 + num2;
      } else if (operation == '-') {
        result = num1 - num2;
      } else if (operation == 'x') {
        result = num1 * num2;
      } else if (operation == '/') {
        result = num2 != 0 ? num1 / num2 : 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: num1Controller,
                        decoration: InputDecoration(
                          labelText: "Num1",
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.teal,
                        ),
                        keyboardType: TextInputType.number,
                        // code color
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: num2Controller,
                        decoration: InputDecoration(
                          labelText: "Num2",
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        keyboardType: TextInputType.number,
                        // code color 
                      ),
                    ],
                  ),
                )),
            Container(
              height: 100,
              color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 4,
                    color: Colors.teal,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    child: Text(
                      "Result = $result",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                  ),
                ),
              child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        onPressed: () => calculate('+'),
                              backgroundColor: Colors.purple[100],
                              child: Text("+", style: TextStyle(fontSize: 24)),
                        ),
                      FloatingActionButton(
                              onPressed: () => calculate('-'),
                              backgroundColor: Colors.purple[100],
                              child: Text("-", style: TextStyle(fontSize: 24)),
                            ),
                            FloatingActionButton(
                              onPressed: () => calculate('x'),
                              backgroundColor: Colors.purple[100],
                        child: Text("x", style: TextStyle(fontSize: 24)),
                        ),
                        FloatingActionButton(
                        onPressed: () => calculate('/'),
                       backgroundColor: Colors.purple[100],
                       child: Text("/", style: TextStyle(fontSize: 24)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
