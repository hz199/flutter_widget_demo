import '../../../index.dart';

class CheckboxPage extends StatefulWidget {
  CheckboxPage({Key key}) : super(key: key);

  @override
  _CheckboxPageState createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool _checkStatus = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Checkbox(
          activeColor: Colors.orange,
          checkColor: Colors.yellow,
          value: _checkStatus,
          onChanged: (value) {
            setState(() {
              _checkStatus = value;
            });
          },
        ),
        Divider(),
        Text('CheckboxListTile\n controlAffinity: ListTileControlAffinity.leading\n添加这个会放在前面'),
        CheckboxListTile(
          // controlAffinity: ListTileControlAffinity.leading,
          secondary: Image.network('http://study.closeeyes.cn/lol_1.jpg', width: 50, height: 50,),
          title: Text('apple 🍎'),
          subtitle: Text('这是个水果'),
          value: _checkStatus,
          onChanged: (value) {
            setState(() {
              _checkStatus = value;
            });
          },
        )
      ],
    );
  }
}
