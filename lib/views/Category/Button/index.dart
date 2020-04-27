import 'package:flutter/cupertino.dart';

import '../../../index.dart';

// class ButtonCategory extends StatelessWidget {
//   const ButtonCategory({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Text('ButtonCategory'),
//       ),
//     );
//   }
// }

class ButtonCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'FloatingActionButton',
          child: Icon(Icons.add_a_photo),
          elevation: 3.0,
          highlightElevation: 2.0,
          backgroundColor: Colors.red, // 红色
        ),
        body: NestedScrollView(
          headerSliverBuilder: _sliverBuilder,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                buttonHeight: 30.0,
                children: <Widget>[
                  OutlineButton(
                    child: Text('Button'),
                    onPressed: () {},
                  ),
                  OutlineButton(
                    child: Text('Button'),
                    onPressed: () {},
                  )
                ],
              ),
              CupertinoButton(
                color: Colors.redAccent,
                onPressed: () {},
                child: Text('CupertinoButton'),
              ),
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('MaterialButton'),
                onPressed: () {},
              ),
              RaisedButton(
                  color: Colors.orange,
                  textColor: Colors.white,
                  child: Text('RaisedButton'),
                  splashColor: Colors.yellow, // 点击水波纹的颜色
                  highlightColor: Colors.green, // 长按背景颜色
                  onPressed: () {},
                  shape: RoundedRectangleBorder( // 设置圆角   // StadiumBorder 直接可以设置成半圆
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )),
              OutlineButton(
                child: Text('Button'),
                onPressed: () {},
              ),
              FlatButton(
                color: Colors.redAccent,
                textColor: Colors.white,
                child: Text('FlatButton'),
                onPressed: () {},
              ),
              IconButton(
                color: Colors.redAccent,
                icon: Icon(Icons.add),
                tooltip: 'IconButton',
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}

List<Widget> _sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
  return <Widget>[
    SliverAppBar(
      elevation: 0,
      centerTitle: true, //标题居中
      expandedHeight: 200.0, //展开高度200
      floating: true, //不随着滑动隐藏标题
      pinned: true, //固定在顶部
      brightness: Brightness.dark,
      iconTheme: IconThemeData(color: Colors.black, size: 30, opacity: 1),
      // backgroundColor: CommonUtils.getRandomColor(),
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text('按钮'),
        collapseMode: CollapseMode.pin,
      ),
    )
  ];
}
