import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color.fromARGB(255, 55, 0, 65), // Set the background color to purple
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Image.asset('assets/logos/USAL_Logo.png', scale: 1.5),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 150.0),
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, CupertinoPageRoute(builder: (context) => HomeScreen()));
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset('assets/logos/Eve_Logo.png', scale: 1.5),
                      ),
                    ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 74, 1, 87),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  CupertinoTextField(
                    placeholder: 'Student ID',
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 240, 240, 240),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(height: 20),
                  CupertinoTextField(
                    placeholder: 'Password',
                    obscureText: true,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 240, 240, 240),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(height: 30),
                  CupertinoButton(
                    child: SizedBox(
                      width: double.infinity, // Button width increased
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    color: Color.fromARGB(255, 176, 7, 41),
                    onPressed: () {
                      // TODO: Implement sign-up action
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
