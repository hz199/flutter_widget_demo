import 'package:flutter/material.dart';
import '../routes/router_fluro.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('测试页面1'),
            onPressed: () {
              RouterFluro.router.navigateTo(context, '/testPage1?id=test1Id111');
            },
          ),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('测试页面2'),
            onPressed: () {
              RouterFluro.router.navigateTo(context, '/testPage2/test2Id222');
            },
          )
        ],
      ),
    );
  }
}
