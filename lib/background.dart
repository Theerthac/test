import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundColor extends StatefulWidget {
  const BackgroundColor({super.key});

  @override
  _BackgroundColorState createState() => _BackgroundColorState();
}

class _BackgroundColorState extends State<BackgroundColor> {
  final List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.cyan,
    Colors.indigo,
    Colors.pink
  ];

  // Initialize the index for the color change
  int _currentColorIndex = 0;

  // Function to change the background color
  void _changeBackgroundColor() {
    setState(() {
      _currentColorIndex = (_currentColorIndex + 1) % colorList.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorList[_currentColorIndex], // Set background color
      appBar: AppBar(
        title: const Center(child: Text('Change Background Color')),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _changeBackgroundColor,
          child: const Text("Change Color"),
        ),
     ),
);}
}