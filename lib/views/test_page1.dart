import 'package:flutter/material.dart';

class TestPage1 extends StatelessWidget {
  final String goodsId;
  TestPage1(this.goodsId);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试页面1'),
      ),
      body: Center(
        child: Text('测试页面1 ${this.goodsId}'),
      ),
    );
  }
}
