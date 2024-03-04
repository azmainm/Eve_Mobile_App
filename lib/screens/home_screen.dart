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
      backgroundColor: const Color.fromARGB(255, 129, 21, 148), // Set the background color to purple
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Image.asset('assets/logos/USAL_Logo.png', scale: 1.5), // Logo made smaller
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8), // Adjust the border radius as needed
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min, // Use min to take up only required space
                children: [
                  SizedBox(height: 20),
                  Image.asset('assets/logos/Eve_Logo.png', scale: 1), 
                  SizedBox(height: 10), // Provide some spacing
                  RichText(
                    text: TextSpan(
                      text: 'Your academic success starts ',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w900, // Extra bold
                        color: Color.fromARGB(111, 0, 70, 128), // Blue color
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'here.',
                          style: TextStyle(
                            fontSize:38,
                            fontWeight: FontWeight.w900, // Extra bold
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
                  Expanded(child: SizedBox()), // Pushes the content up
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
