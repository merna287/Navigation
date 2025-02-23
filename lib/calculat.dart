import 'package:flutter/material.dart';


class Calculator extends StatelessWidget {
  Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculat(),
    );
  }
}

class Calculat extends StatefulWidget {
  Calculat({super.key});

  @override
  State<Calculat> createState() => _CalculatState();
}

class _CalculatState extends State<Calculat> {
  var num1Controller = TextEditingController();
  var num2Controller = TextEditingController();
  double result = 0.0;

  Color num1Color = Colors.teal;
  Color num2Color = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        child: TextField(
                          controller: num1Controller,
                          onChanged: (value) {
                            setState(() {
                              num1Color =
                              value.isNotEmpty ? Colors.grey : Colors.teal;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "Num1",
                            hintStyle: TextStyle(fontSize: 15),
                            filled: true,
                            fillColor: num1Color,
                            enabledBorder: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.blue, width: 5),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: TextField(
                          controller: num2Controller,
                          onChanged: (value) {
                            setState(() {
                              num2Color =
                              value.isNotEmpty ? Colors.grey : Colors.teal;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "Num2",
                            hintStyle: TextStyle(fontSize: 15),
                            filled: true,
                            fillColor: num2Color,
                            enabledBorder: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.blue, width: 5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 100,
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        color: Colors.teal,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          ),
                          child: Text(
                            "Result = $result",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              double num1 = double.tryParse(num1Controller.text)?? 0;
                              double num2 = double.tryParse(num2Controller.text)?? 0;
                              result = num1 + num2;
                            });
                          },
                          child: Text("+", style: TextStyle(fontSize: 24)),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              double num1 = double.tryParse(num1Controller.text)?? 0;
                              double num2 = double.tryParse(num2Controller.text)?? 0;
                              result = num1 - num2;
                            });
                          },
                          child: Text("-", style: TextStyle(fontSize: 24)),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              double? num1 = double.tryParse(num1Controller.text)?? 0;
                              double? num2 = double.tryParse(num2Controller.text)?? 0;
                              result = num1 * num2;
                            });
                          },
                          child: Text("x", style: TextStyle(fontSize: 24)),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              double? num1 = double.tryParse(num1Controller.text)?? 0;
                              double? num2 = double.tryParse(num2Controller.text)?? 0;
                              result = num2 != 0 ? num1 / num2 : 0;
                            });
                          },
                          child: Text("/", style: TextStyle(fontSize: 24)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
    }
}