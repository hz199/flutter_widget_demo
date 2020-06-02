
import '../../../index.dart';

class AnimatePage extends StatelessWidget {
  const AnimatePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: 300,
              height: 300,
              color: Colors.blue,
              child: Text('你好'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}