import '../../../index.dart';
import 'AnimatedSwitcher.dart';
import 'Checkbox.dart';
import 'ProgressPage.dart';

class BaseCompPage extends StatefulWidget {
  BaseCompPage({Key key}) : super(key: key);

  @override
  _BaseCompPageState createState() => _BaseCompPageState();
}

class _BaseCompPageState extends State<BaseCompPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('基础组件'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            // AnimatedList
            Text('1. AnimatedSwitcher\n AnimatedSwitcher在2个或者多个子组件之间切换时使用动画'),
            AnimatedSwitcherPage(),
            Divider(
              height: 10,
              color: Colors.red,
            ),
            // ConstrainedBox
            Text(
                '2. ConstrainedBox\n ConstrainedBox组件约束子组件的最大宽高和最小宽高\n子组件无法突破设置的最大宽高'),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 60, maxWidth: 100),
              child: Container(
                height: 300,
                width: 200,
                color: Colors.red,
                child: Text('宽高设置为300'),
              ),
            ),
            Divider(
              height: 10,
              color: Colors.red,
            ),
            Text(
                '3. AspectRatio\n aspectRatio参数是宽高比 aspectRatio: 3 / 1\n可以设置图片16/9'),
            AspectRatio(
              aspectRatio: 4 / 1,
              child: Container(color: Colors.red),
            ),
            Divider(
              height: 10,
              color: Colors.red,
            ),
            Text('4. Checkbox'),
            CheckboxPage(),
            Divider(
              height: 10,
              color: Colors.red,
            ),
            Text('4. 进度条'),
            ProgressPage(),
            Divider(
              height: 10,
              color: Colors.red,
            ),
            Text('5. InkWell\nInkWell组件在用户点击时出现“水波纹”效果'),
            Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.red, Colors.orange]),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                    'InkWell',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
