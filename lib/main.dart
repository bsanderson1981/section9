import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//git init && git add . && git commit -m "Initial commit" && git remote add origin https://github.com/bsanderson1981/section8 && git branch -M main && git push -u origin main

//void main() => runApp(XylophoneApp());

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // 🔧 Ensures Flutter is ready
  runApp(XylophoneApp());
}


class XylophoneApp extends StatelessWidget {


  void playNote(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: List.generate(7, (index) { // make index for onpress and wav files callback
            return Expanded(
                child: Container(
                width: double.infinity, // Full width row
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.primaries[index % Colors.primaries.length],  //  colors for button
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // No rounding
                  ),
                ),
                onPressed: () {
                  // Replace this with your logic
                  playNote(index + 1);
                  print('Button ${index + 1} pressed');
                },
                child: Text(
                  'Button ${index + 1}',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
                ),
            );
          }),
        ),
      ),
    );
  }
}