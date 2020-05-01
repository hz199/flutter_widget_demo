import 'package:flutter/cupertino.dart';

import '../../../index.dart';

class DialogCategory extends StatelessWidget {
  const DialogCategory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Dialog'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                _showAlertDialogFunc(context);
              },
              child: Text('AlertDialog'),
              color: Colors.redAccent,
              textColor: Colors.white,
              shape: StadiumBorder(),
            ),
            MaterialButton(
              onPressed: () {
                _showSimpleDialogFunc(context);
              },
              child: Text('SimpleDialog'),
              color: Colors.orange,
              textColor: Colors.white,
              shape: StadiumBorder(),
            ),
            MaterialButton(
              onPressed: () {
                _showCupertinoAlertDialog(context);
              },
              child: Text('CupertinoAlertDialog'),
              color: Colors.greenAccent,
              textColor: Colors.white,
              shape: StadiumBorder(),
            )
          ],
        ),
      ),
    );
  }

  // AlertDialog
  void _showAlertDialogFunc(BuildContext context) {
    showDialog<Null>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('标题'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('AlertDialog'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('确定'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    ).then((val) {
      print(val);
    });
  }

  // SimpleDialog 调用函数
  void _showSimpleDialogFunc(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('选择'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('选项 1'),
              onPressed: () {
                Navigator.of(context).pop('11');
              },
            ),
            SimpleDialogOption(
              child: Text('选项 2'),
              onPressed: () {
                Navigator.of(context).pop('22');
              },
            ),
          ],
        );
      },
    ).then((val) {
      print(val);
    });
  }

  void _showCupertinoAlertDialog(BuildContext context) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text("这是一个iOS风格的对话框"),
            content: SizedBox(
              height: 100.0,
              child: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text("第1行"),
                    Text("第2行"),
                    Text("第3行"),
                    Text("第4行"),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text("取消"),
                onPressed: () {
                  Navigator.of(context).pop('11');
                  print("取消");
                },
              ),
              CupertinoDialogAction(
                child: Text("确定"),
                onPressed: () {
                  Navigator.of(context).pop('22');
                },
              ),
            ],
          );
        }).then((val) {
      print(val);
    });
  }
}
