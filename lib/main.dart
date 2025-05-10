import 'package:flutter/material.dart';
//git init && git add . && git commit -m "Initial commit" && git remote add origin https://github.com/bsanderson1981/section8 && git branch -M main && git push -u origin main
/
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(),
        ),
      ),
    );
  }
}