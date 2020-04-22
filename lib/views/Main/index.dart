import 'package:flutter/material.dart';
import './bottomItemConfig.dart';
import '../Home/index.dart';
import '../Category/index.dart';
import '../ShopingCat/index.dart';
import '../Personal/index.dart';

List<Widget> mainPages = [
  HomePage(),
  CategoryPage(),
  ShopingCatPage(),
  PersonalPage()
];

class MyTestPage extends StatefulWidget {
  @override
  _MyTestPage createState() {
    return new _MyTestPage();
  }
}

class _MyTestPage extends State<MyTestPage>
    with SingleTickerProviderStateMixin {
  final PageController _pageController = new PageController(initialPage: 0);
  int _tabIndex = 0;

  _onPageChange(int index) {
    setState(() {
      _tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        onPageChanged: _onPageChange,
        controller: _pageController,
        itemBuilder: (BuildContext context, int index) {
          return mainPages[index];
        },
        itemCount: mainPages.length,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {}, //按钮点击事件
        tooltip: '+', //按钮长按提示
        child: Icon(Icons.add, color: Colors.grey),
      ),

      //悬浮按钮和底部工具栏进行融合
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _createBottomBarItem()
        ),
      ),
    );
  }

  List<Widget> _createBottomBarItem () {
    final List<Widget> children = <Widget>[];

    for (int i = 0; i < bottonItemConfig.length; i += 1) {
      children.add(_createItem(bottonItemConfig[i], i));
    }

    children.insert(2, Container(
      width: 50.0,
      height: 50.0,
    ));

    return children;
  }

  Widget _createItem(BottonItemConfig item, int index) {
    final bool isSelet = index == _tabIndex;

    return Expanded(
        flex: 1,
        child: Container(
            padding: EdgeInsets.only(bottom: 10, top: 10),
            child: InkResponse(
              onTap: () {
                _pageController.jumpToPage(index);
                _onPageChange(index);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  isSelet ? item.activeIcon : item.icon,
                  isSelet ? item.activeTitle : item.title,
                ],
              ),
            )));
  }
}


// DefaultTextStyle.merge(
//                       style: TextStyle(
//                         fontSize: 10,
//                         // ignore: ambiguous_import
//                         color: Colors.grey[900],
//                       ),
//                       child: title)
