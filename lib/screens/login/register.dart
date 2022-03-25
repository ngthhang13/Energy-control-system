import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/login/background.dart';
import 'package:flutter_application_2/screens/login/login.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: const Text(
                "REGISTER",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2661FA),
                  fontSize: 42
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 20, right: 30 ),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: "Name"
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 20, right: 30 ),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: "Email"
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 20, right: 30 ),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: "Username"
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01,
            ),

            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, right: 30 ),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password"
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01,
            ),
            
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, right: 30 ),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Confirm Password"
                ),
              ),
            ),
            SizedBox(height: size.height*0.08),

            Container(
              alignment: Alignment.centerRight,
              margin:const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)) ,
              textColor: Colors.white,
              padding: const EdgeInsets.all(0),
                onPressed: () {},
                child: GestureDetector(
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())),
                },
              child: Container (
                alignment: Alignment.center,
                height: 50,
                width: size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80.0),
                  gradient: const LinearGradient(
                    colors: [ 
                      Color.fromARGB(255, 255, 136, 34),
                      Color.fromARGB(255, 255, 177, 41)
                    ]
                    )

                ),
                padding: const EdgeInsets.all(0),
                child: const Text(
                  "SIGN UP",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                ),

              ),
              ),
            ),
              ),

              
            Container(
              alignment: Alignment.centerRight,
              margin:const EdgeInsets.symmetric(horizontal: 50, vertical: 4),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())),
                },
                child: const Text(
                "Already have an account? LOG IN",
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 35, 120, 190),)
                ,)
              ),
            ),

          ],
        ),
        ),
    );
    
  }
}