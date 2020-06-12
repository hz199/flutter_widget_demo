import '../../../index.dart';

class CustomPainterPage extends StatefulWidget {
  CustomPainterPage({Key key}) : super(key: key);

  @override
  _CustomPainterState createState() => _CustomPainterState();
}

class _CustomPainterState extends State<CustomPainterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue, Colors.white]
        )
      ),
      child: CustomPaint(
        painter: MyPainter(),
      ),
    );
  }
}

// 画布
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final _paint = Paint()..color = Colors.white;

    canvas.drawCircle(size.center(Offset(0, 150.0)), 50.0, _paint);
    canvas.drawOval(Rect.fromCenter(
      center: size.center(Offset(0, 300)),
      width: 200.0,
      height: 250.0
    ), _paint);

    final _snowLake = SnowLake();
    // 雪花
    canvas.drawCircle(Offset(_snowLake.x, _snowLake.y), _snowLake.radius, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

// 雪花
class SnowLake {
  double x = 90.0;
  double y = 100.0;

  double radius = 20.0;
}
