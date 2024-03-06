import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
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
            Expanded( // Expanded widget for the container to take up remaining space
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
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                 Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset('assets/logos/Eve_Logo.png', scale: 1),
                  ), 
                  SizedBox(height: 10), // Provide some spacing
                  RichText(
                    text: TextSpan(
                      text: 'Your academic success starts ',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w900, // Extra w900
                        color: Color.fromARGB(255, 74, 1, 87), // Blue color
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'here.',
                          style: TextStyle(
                            fontSize:38,
                            fontWeight: FontWeight.w900, // Extra w900
                            color: Color.fromARGB(255, 176, 7, 41), // Red color
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30), // Provide spacing
                  CupertinoButton(
                    child: SizedBox(
                      width: double.infinity, // Button width increased
                      child: Text(
                        'Log in',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    color: Color.fromARGB(255, 176, 7, 41),
                    onPressed: () {
                      // TODO: Implement login action
                    },
                  ),
                  SizedBox(height: 10), // Provide some spacing
                  CupertinoButton(
                    child: SizedBox(
                      width: double.infinity, // Button width increased
                      child: Text(
                        'Sign up',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    color: Color.fromARGB(255, 176, 7, 41),
                    onPressed: () {
                      // TODO: Implement sign-up action
                    },
                  ), 
                 //  SizedBox(height:20),
                ],
              ),
            ),
            ),
    ],
      
      ),

    );
    
  }
}
