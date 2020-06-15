import 'dart:math';
import '../../../index.dart';

class CustomPainterPage extends StatefulWidget {
  CustomPainterPage({Key key}) : super(key: key);

  @override
  _CustomPainterState createState() => _CustomPainterState();
}

class _CustomPainterState extends State<CustomPainterPage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  List<SnowFlake> _snowFlake = List.generate(100, (index) => SnowFlake());

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue, Colors.white])),
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (_, __) {
            _snowFlake.forEach((snow) => snow.fall());
            return CustomPaint(
              painter: MyPainter(_snowFlake),
            );
          },
        ));
  }
}

// 画布
class MyPainter extends CustomPainter {
  final List<SnowFlake> _snowFlake;

  MyPainter(this._snowFlake);
  @override
  void paint(Canvas canvas, Size size) {
    final _paint = Paint()..color = Colors.white;

    // 雪人的头
    canvas.drawCircle(size.center(Offset(0, 200.0)), 50.0, _paint);
    // 雪人的身子
    canvas.drawOval(
        Rect.fromCenter(
            center: size.center(Offset(0, 350)), width: 200.0, height: 250.0),
        _paint);

    // 雪花
    _snowFlake.forEach((snow) {
      canvas.drawCircle(Offset(snow.x, snow.y), snow.radius, _paint);
    });
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

// 雪花
class SnowFlake {
  double x = Random().nextDouble() * 400;
  double y = Random().nextDouble() * 800;
  double g = Random().nextDouble() * 4 + 2;
  double radius = Random().nextDouble() * 2 + 2;

  // 下落
  fall() {
    y += g;
    if (y > 800) {
      y = 0;
      x = Random().nextDouble() * 400;
      g = Random().nextDouble() * 4 + 2;
      radius = Random().nextDouble() * 2 + 2;
    }
  }
}
