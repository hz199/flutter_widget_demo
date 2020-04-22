import 'package:flutter/material.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PersonalPage'),
      ),
      body: Container(
        child: Center(
          child: Text('PersonalPage'),
        ),
      ),
    );
  }
}
