import '../../../index.dart';
import 'package:flare_flutter/flare_actor.dart';

class RiveAnimatePage extends StatefulWidget {
  RiveAnimatePage({Key key}) : super(key: key);

  @override
  _RiveAnimatePageState createState() => _RiveAnimatePageState();
}

class _RiveAnimatePageState extends State<RiveAnimatePage> {
  String _currentAnimateName = 'day_idle';

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      width: 200,
      height: 200,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      color: Colors.white,
      child: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              if (_currentAnimateName == 'day_idle') {
                _currentAnimateName = 'switch_night';
              } else if (_currentAnimateName == 'night_idle') {
                _currentAnimateName = 'switch_day';
              }
            });
          },
          child: FlareActor(
            "assets/switch_daytime.flr",
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: _currentAnimateName,
            callback: (name) {
              if (name == 'switch_day') {
                setState(() => _currentAnimateName = 'day_idle');
              } else if (name == 'switch_night') {
                setState(() => _currentAnimateName = 'night_idle');
              }
            },
          ),
        ),
      ),
    );
  }
}
