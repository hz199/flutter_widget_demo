import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CategoryPage'),
      ),
      body: Container(
        child: Center(
          child: Text('CategoryPage'),
        ),
      ),
    );
  }
}
