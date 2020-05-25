import 'package:flutter/cupertino.dart';

import '../../../index.dart';

class ProgressPage extends StatefulWidget {
  ProgressPage({Key key}) : super(key: key);

  @override
  _ProgressPageState createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        LinearProgressIndicator(
          // value: 0.3,
          backgroundColor: Colors.greenAccent,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
        ),
        SizedBox(
          height: 20.0,
        ),
        CircularProgressIndicator(
          // value: 0.3,
          backgroundColor: Colors.greenAccent,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
        ),
        SizedBox(
          height: 20.0,
        ),
        CupertinoActivityIndicator(
          radius: 30,
        ),
        SizedBox(
          height: 20.0,
        ),
        RefreshProgressIndicator()
      ],
    );
  }
}
