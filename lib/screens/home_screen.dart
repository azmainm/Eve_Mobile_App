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
      navigationBar: CupertinoNavigationBar(
        middle: Text('LSA', style: TextStyle(color: CupertinoColors.systemRed)),
        backgroundColor: CupertinoColors.systemGrey.withOpacity(0.5),
        leading: Container(), // Placeholder to center the title
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logos/Eve_Logo.png'), // Replace with your actual logo path
            SizedBox(height: 50), // Provide some spacing
            Text(
              'Your academic success starts here.',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 100), // Provide spacing
CupertinoButton(
  child: Text('Log in'),
  color: CupertinoColors.systemRed,
  onPressed: () {
    // TODO: Implement login action
  },
),
SizedBox(height: 10), // Provide some spacing
CupertinoButton(
  child: Text('Sign up'),
  color: CupertinoColors.systemRed,
  onPressed: () {
    // TODO: Implement sign-up action
  },
),

          ],
        ),
      ),
    );
  }
}
