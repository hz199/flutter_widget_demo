import '../../../index.dart';

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
            itemCount: 8,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
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
                child: Center(
                  child: Text('1111'),
                ),
              );
            },
          ),
        ));
  }
}
