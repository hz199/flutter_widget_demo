import 'package:flutter/material.dart';
import 'package:flutterwidgetdemo/routes/router_fluro.dart';

class TestPage1 extends StatelessWidget {
  final String index;
  TestPage1(this.index);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('测试页面1'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            RouterFluro.goBack(context);
          },
        )
      ),
      body: Center(
        child: Text('111'),
      ),
    );
  }
}
