import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Customize Button')),
      body: Center(
        child: Text('Here you can customize the button settings'),
      ),
    );
  }
}
