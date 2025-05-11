import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//git init && git add . && git commit -m "Initial commit" && git remote add origin https://github.com/bsanderson1981/section8 && git branch -M main && git push -u origin main

//void main() => runApp(XylophoneApp());

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // 🔧 Ensures Flutter is ready
  runApp(XylophoneApp());
}


class XylophoneApp extends StatelessWidget {


  void playSound() async {
    final player = AudioPlayer(); // ✅ Created only when needed
    print('Playing sound...');
    await player.play(AssetSource('note2.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: playSound,
              child: Text(
                'Play Sound',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}