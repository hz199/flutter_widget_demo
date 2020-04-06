import 'package:flutter/material.dart';

class TestPage2 extends StatelessWidget {
  final String goodsId;
  TestPage2(this.goodsId);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试页面2'),
      ),
      body: Center(
        child: Text('测试页面2 ${this.goodsId}'),
      ),
    );
  }
}
