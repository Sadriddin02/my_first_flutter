import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ToggleSwitchWithColors(),
    );
  }
}

class ToggleSwitchWithColors extends StatefulWidget {
  @override
  _ToggleSwitchWithColorsState createState() => _ToggleSwitchWithColorsState();
}

class _ToggleSwitchWithColorsState extends State<ToggleSwitchWithColors> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Ranglar bilan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: _isToggled,
              onChanged: (bool value){
               print(_isToggled);
                setState(() {
                  _isToggled = value;
                });
              },
              activeColor: Colors.green, // Switch yoqilganda tugma rangi
              inactiveThumbColor: Colors.red, // Switch o'chirilganda tugma rangi
              inactiveTrackColor: Colors.redAccent, // O'chirilgan holatdagi iz rangi
            ),
            SizedBox(height: 20), // Bo'sh joy qo'shildi
            Text(
              _isToggled ? 'To‘g‘ri' : 'Noto‘g‘ri',
              style: TextStyle(
                fontSize: 24,
                color: _isToggled ? Colors.green : Colors.red, // Matn rangi holatga qarab
              ),
            ),
          ],
        ),
      ),
    );
  }
}