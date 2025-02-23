import 'package:flutter/material.dart';

class Login_page extends StatelessWidget {
  const Login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 36),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Welcome Back",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(60))
              ),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    SizedBox(height: 60,  ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(225, 95, 27, 0.3),
                          blurRadius: 30,
                          offset: Offset(0, 10)),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                            color: Colors.grey[300]!)
                          ),
                        ),
                       child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey, width: 5),
                            ),
                            hintText: "Enter email or phone",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey[300]!))),
                        child: TextField(
                          obscureText: obscure,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                            color: Colors.grey, width: 5),
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                            icon: Icon(  obscure  ? Icons.visibility_off  : Icons.visibility,),
                            onPressed: () {
                              setState(() {
                                obscure = !obscure;
                              });
                            },
                          ),
                         ),
                       ),
                      ),
                    ],
                  ),
                ),
                SizedBox(  height: 40,  ),
                Text(  "Forgot Password?",  style: TextStyle(color: Colors.grey[900]),  ),
                SizedBox(  height: 30,  ),
                InkWell(
                  onTap:(){},
                  child: Container(
                    height: 50,
                    width: 250,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.deepOrange,
                    ),
                    child: Center(
                      child: Text( "Login",style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold), ),
                    ),  
                  ),
                ),
                SizedBox( height: 30,  ),
                Text(  "Contiune with social media",  style: TextStyle(color: Colors.grey[900]),  ),
                SizedBox( height: 30,  ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     InkWell(
                      onTap: (){},
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                          ),
                          child: Center(
                            child: Text("Facebook",style: TextStyle(  color: Colors.white,  fontWeight: FontWeight.bold),  ),
                          ),
                        ),
                      ),
                      SizedBox(  width: 30,  ),
                        InkWell(
                          onTap: (){},
                            child: Container(
                              height: 50,
                              width: 150, 
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black,
                                ),
                            child: Center(
                              child: Text(  "Github",style: TextStyle( color: Colors.white,  fontWeight: FontWeight.bold),),
                             ),
                           ),
                          ),
                        ],
                      ),
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
