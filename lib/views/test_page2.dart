import 'package:flutter/material.dart';
import 'package:flutterwidgetdemo/utils/flutter_screenutil.dart';

class TestPage2 extends StatelessWidget {
  TestPage2({this.title, this.id});
  final String id;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_alarm),
      ),
      body: new Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: ScreenConfig.instance.setWidth(375),
                  height: ScreenConfig.instance.setHeight(200),
                  color: Colors.red,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
