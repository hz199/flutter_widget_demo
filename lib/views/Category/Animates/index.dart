import '../../../index.dart';

class AnimatePage extends StatelessWidget {
  const AnimatePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动画组件'),
      ),
      body: GridView.builder(
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
              color: Colors.white,
              border: Border.all(
                  color: Colors.grey, width: 2.0, style: BorderStyle.solid)),
            child: Center(
              child: Text('1111'),
            ),
          );
        },
      ),
    );
  }
}
