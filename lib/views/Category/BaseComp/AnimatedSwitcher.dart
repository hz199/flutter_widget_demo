import '../../../index.dart';

class AnimatedSwitcherPage extends StatefulWidget {
  AnimatedSwitcherPage({Key key}) : super(key: key);

  @override
  _AnimatedSwitcherPageState createState() => _AnimatedSwitcherPageState();
}

class _AnimatedSwitcherPageState extends State<AnimatedSwitcherPage> {
  var _currChild = Container(
    key: ValueKey("1"),
    height: 300,
    width: 300,
    color: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: AnimatedSwitcher(
            duration: Duration(seconds: 1),
            transitionBuilder: (Widget child, Animation<double> value) {
              return ScaleTransition(
                child: child,
                scale: value,
              );
            },
            child: _currChild,
          ),
        ),
        ButtonBar(
          children: <Widget>[
            RaisedButton(
              child: Text('点击'),
              onPressed: () {
                setState(() {
                  _currChild = Container(
                    key: ValueKey("2"),
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  );
                });
              },
            ),
            RaisedButton(
              child: Text('复原'),
              onPressed: () {
                setState(() {
                  _currChild = Container(
                    key: ValueKey("1"),
                    height: 300,
                    width: 300,
                    color: Colors.red,
                  );
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
