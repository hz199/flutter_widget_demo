import '../../index.dart';
import './categoryConfig.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('CategoryPage'),
      ),
      body: Container(
        margin: EdgeInsets.only(
            left: ScreenConfig.instance.setWidth(40.0),
            right: ScreenConfig.instance.setWidth(40.0),
            top: ScreenConfig.instance.setHeight(20.0)),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              crossAxisCount: 2, //每行三列
              childAspectRatio: 1.5 //显示区域宽高相等
              ),
          itemCount: categoryConfig.length,
          itemBuilder: (BuildContext context, int index) {
            return _createGridItem(index);
          },
        ),
      ),
    );
  }

  Widget _createGridItem(int index) {
    return Stack(
      alignment: Alignment.center,
      // fit: StackFit.expand,
      children: <Widget>[
        Positioned(
            top: 5.0,
            child: Opacity(
              opacity: 0.2,
              child: Container(
                decoration: BoxDecoration(
                    color: CommonUtils.getRandomColor(),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1.0, 1.0),
                          blurRadius: 1.0,
                          spreadRadius: 1.0)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                width: ScreenConfig.instance.setWidth(270.0),
                height: ScreenConfig.instance.setHeight(160.0),
              ),
            )),
        Positioned(
          top: 0,
          child: Container(
            width: ScreenConfig.instance.setWidth(300.0),
            height: ScreenConfig.instance.setHeight(156.0),
            decoration: BoxDecoration(
                // color: Colors.redAccent,
                gradient: LinearGradient(
                  colors: [
                    CommonUtils.getRandomColor(initNumber: 250),
                    CommonUtils.getRandomColor(initNumber: 250),
                    CommonUtils.getRandomColor(initNumber: 250),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 1.0,
                      spreadRadius: 1.0)
                ]),
            child: _createContent(index),
          ),
        )
      ],
    );
  }

  Widget _createContent(int index) {
    final _fontStyleLong = TextStyle(fontSize: 22.0, color: Colors.grey[100]);
    final _fontStyleSmall = TextStyle(fontSize: 14.0, color: Colors.grey[100]);

    final CategoryConfig _currentCinfig = categoryConfig[index];

    return Container(
      margin: EdgeInsets.symmetric(
          vertical: ScreenConfig.instance.setWidth(20.0),
          horizontal: ScreenConfig.instance.setWidth(28.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text.rich(TextSpan(children: [
                TextSpan(text: _currentCinfig.cnTitle.substring(0, 1), style: _fontStyleLong),
                TextSpan(text: _currentCinfig.cnTitle.substring(1), style: _fontStyleSmall)
              ])),
              Icon(
                _currentCinfig.icon,
                color: Colors.grey[200],
                size: 30.0,
              )
            ],
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text.rich(TextSpan(children: [
                TextSpan(text: _currentCinfig.enTitle.substring(0, 1), style: _fontStyleLong),
                TextSpan(text: _currentCinfig.enTitle.substring(1), style: _fontStyleSmall)
              ])),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end, 
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: ScreenConfig.instance.setWidth(50.0),
                    height: ScreenConfig.instance.setHeight(2.0),
                    color: Colors.grey[200],
                  ),
                  Container(
                    width: ScreenConfig.instance.setWidth(30.0),
                    height: ScreenConfig.instance.setHeight(6.0),
                    color: Colors.grey[200],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
