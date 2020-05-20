import '../../index.dart';
import './shopingCatConfig.dart';

// class ShopingCatPage extends StatelessWidget {
//   const ShopingCatPage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     int currentIndex = Provider.of<CurrentIndexProvider>(context).currentIndex;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ShopingCatPage'),
//       ),
//       body: Container(
//         child: Center(
//           child: Column(
//             children: <Widget>[
//               Text(currentIndex.toString()),
//               FlatButton(
//                 onPressed: () {
//                   Provider.of<CurrentIndexProvider>(context, listen: false).changeIndex();
//                 },
//                 child: Text('点击'),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class ShopingCartPage extends StatelessWidget {
  const ShopingCartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('扩展'),
        elevation: 0,
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
              childAspectRatio: 1.8 //显示区域宽高相等
              ),
          itemCount: shopingCatConfig.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: _createGridItem(index, context),
              onTap: () {
                RouterFluro.router
                    .navigateTo(context, shopingCatConfig[index].routerUrl);
              },
            );
          },
        ),
      ),
    );
  }

  Widget _createGridItem(int index, BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      // fit: StackFit.expand,
      children: <Widget>[
        Positioned(
            top: 5.0,
            child: Opacity(
              opacity: 0.3,
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
                height: ScreenConfig.instance.setWidth(166.0),
              ),
            )),
        Positioned(
          top: 0,
          child: Container(
            width: ScreenConfig.instance.setWidth(300.0),
            height: ScreenConfig.instance.setWidth(160.0),
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

    final ShopingCatConfig _currentCinfig = shopingCatConfig[index];

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
                TextSpan(
                    text: _currentCinfig.cnTitle.substring(0, 1),
                    style: _fontStyleLong),
                TextSpan(
                    text: _currentCinfig.cnTitle.substring(1),
                    style: _fontStyleSmall)
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
                TextSpan(
                    text: _currentCinfig.enTitle.substring(0, 1),
                    style: _fontStyleLong),
                TextSpan(
                    text: _currentCinfig.enTitle.substring(1),
                    style: _fontStyleSmall)
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
