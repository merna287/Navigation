import 'package:flutter/material.dart';
import 'calculat.dart';
import 'login.dart';

 void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
 const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
 int _currentIndex = 0;

 final List<Widget> _screens = [
    Login_page(),
    Calculator(),
    BMI(),
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(

     body: _screens[_currentIndex],
     bottomNavigationBar: BottomNavigationBar(
       currentIndex: _currentIndex,
       onTap: (index) {
         setState(() {
            _currentIndex = index;
             });
           },
           items: [
             BottomNavigationBarItem(
                icon: Icon(Icons.login),
           label: "Logic",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calculate),
               label: "Calculator",
              ),
          BottomNavigationBarItem(
           icon: Icon(Icons.app_registration),
             label: "BMI",
          ),
           ],
          ),
        );
      }
    }

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  // writing variables
  double height = 150.0;
  int weight = 50, age = 20;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        centerTitle: true,
        title: Text(
          "BMl Calulator",
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Color(0xFF0A0E21),
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: isMale ? Colors.blue : Colors.grey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 88,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(fontSize: 30),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: isMale ? Colors.grey : Colors.pink,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 88,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 15,
                  end: 15,
                  top: 10,
                  bottom: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(fontSize: 30),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            height.toStringAsFixed(0),
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " cm",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        onChanged: (double x) {
                          setState(() {
                            height = x;
                          });
                        },
                        min: 150,
                        max: 200,
                        activeColor: isMale ? Colors.blue : Colors.pink,
                        inactiveColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(fontSize: 28),
                            ),
                            Text(
                              "$weight",
                              style: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: "weight--",
                                  onPressed: () {
                                    setState(() {
                                      weight > 50 ? weight-- : weight = 50;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  heroTag: "weight++",
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(fontSize: 28),
                            ),
                            Text(
                              "$age",
                              style: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: "age--",
                                  onPressed: () {
                                    setState(() {
                                      age > 20 ? age-- : age = 20;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  heroTag: "age++",
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  double bmi = weight / ((height / 100) * (height / 100));  // حساب BMI
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Result(bmiValue: bmi),
                      ),
                    );
                },
                child: Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: isMale ? Colors.blue : Colors.pink,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Calculate",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )
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

class Result extends StatelessWidget {
  final double bmiValue;   
  const Result({super.key, required this.bmiValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 4, 0, 26),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 9, 0, 26),
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),  
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Your Result",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),  
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      bmiValue < 18.5
                          ? "UNDERWEIGHT"
                          : (bmiValue < 25 ? "NORMAL" : "OVERWEIGHT"),
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: bmiValue < 18.5
                            ? Colors.blue
                            : (bmiValue < 25 ? Colors.green : Colors.red),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      bmiValue.toStringAsFixed(1),  
                      style: const TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      bmiValue < 18.5
                          ? "You are underweight."
                          : (bmiValue < 25
                              ? "You have a normal body weight. Good job!"
                              : "You are overweight. Try to maintain a healthy lifestyle."),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),  
            GestureDetector(
              onTap: () {
                Navigator.pop(context);  
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Re-Calculate",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
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
