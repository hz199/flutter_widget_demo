import '../../../index.dart';
import './CustomPainter.dart';
import './RiveAnimate.dart';

class AnimateConfig<T> {
  // 要跳转的页面
  final T widget;
  // title
  final String title;
  AnimateConfig({this.widget, this.title});
}

List<AnimateConfig> _animateConfig = [
  AnimateConfig<CustomPainterPage>(
      widget: CustomPainterPage(), title: '自定义painter动画'),
  AnimateConfig<RiveAnimatePage>(
      widget: RiveAnimatePage(), title: 'rive flare动画')
];

class AnimatePage extends StatelessWidget {
  const AnimatePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('动画组件'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: _animateConfig.length,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              AnimateConfig cuttentConfig = _animateConfig[index];

              return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1.0, 1.0),
                          blurRadius: 1.0,
                          spreadRadius: 1.0)
                    ],
                    gradient: LinearGradient(
                      colors: [
                        CommonUtils.getRandomColor(initNumber: 250),
                        CommonUtils.getRandomColor(initNumber: 250),
                        CommonUtils.getRandomColor(initNumber: 250),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return cuttentConfig.widget;
                      }));
                    },
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          cuttentConfig.title,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ));
            },
          ),
        ));
  }
}
