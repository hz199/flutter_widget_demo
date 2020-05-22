import 'package:flutter/material.dart';

class MyCustomTabs extends StatefulWidget {
  MyCustomTabs({Key key}) : super(key: key);

  @override
  _MyCustomTabsState createState() => _MyCustomTabsState();
}

class _MyCustomTabsState extends State<MyCustomTabs> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('11'),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Text('right'),
        )
      ],
    );
  }
}
