import 'package:flutter/material.dart';
import './Home/config.dart';

class TestPage1 extends StatelessWidget {
  final String index;
  TestPage1(this.index);
  @override
  Widget build(BuildContext context) {
    final String _currentIamgeUrl = homeConfig[int.parse(index)].imageUrl;

    return Scaffold(
      appBar: AppBar(
        title: Text('测试页面1'),
      ),
      body: Center(
        child: Hero(
          tag: _currentIamgeUrl,
          child: Image.network(_currentIamgeUrl),
        ),
      ),
    );
  }
}
