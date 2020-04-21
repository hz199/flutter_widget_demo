import 'package:flutter/material.dart';
import '../../components/CustomBottomBar/index.dart';
import 'home_page.dart';
import 'find_page.dart';
import 'msg_page.dart';
import 'my_page.dart';

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

  Icon _getBarIcon(int index, bool isActive) {
    if (index == 0) {
      return _getAssetIcon(
          Icons.add_alarm, isActive ? Colors.black : Colors.redAccent);
    } else if (index == 1) {
      return _getAssetIcon(
          Icons.save, isActive ? Colors.black : Colors.redAccent);
    } else if (index == 2) {
      return _getAssetIcon(
          Icons.nature, isActive ? Colors.black : Colors.redAccent);
    } else {
      return _getAssetIcon(
          Icons.face, isActive ? Colors.black : Colors.redAccent);
    }
  }

  Icon _getAssetIcon(IconData icon, Color color) {
    return Icon(
      icon,
      color: color,
    );
  }

  Text _getBarText(int index) {
    if (index == 0) {
      return Text("首页", style: TextStyle(fontSize: 10));
    } else if (index == 1) {
      return Text("发现", style: TextStyle(fontSize: 10));
    } else if (index == 2) {
      return Text("消息", style: TextStyle(fontSize: 10));
    } else {
      return Text("我的", style: TextStyle(fontSize: 10));
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          body: PageView.builder(
            onPageChanged: _onPageChange,
            controller: _pageController,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return new HomePage();
              } else if (index == 1) {
                return new FindPage();
              } else if (index == 2) {
                return new MsgPage();
              } else if (index == 3) {
                return new MyPage();
              }
            },
            itemCount: 4,
          ),
          bottomNavigationBar: CustomBottomBar(
              backgroundColor: Color(0xffEEEFF2),
              currentIndex: _tabIndex,
              textFocusColor: Colors.deepOrange,
              onTap: (index) {
                _pageController.jumpToPage(index);
//            _pageController.animateToPage(index, duration: Duration(milliseconds: 100), curve: Curves.ease);
                _onPageChange(index);
              },
              items: <CustomBottomBarItem>[
                CustomBottomBarItem(
                    icon: _getBarIcon(0, false),
                    title: _getBarText(0),
                    activeIcon: _getBarIcon(0, true)),
                CustomBottomBarItem(
                    icon: _getBarIcon(1, false),
                    title: _getBarText(1),
                    activeIcon: _getBarIcon(1, true)),
                CustomBottomBarItem(
                    icon: _getBarIcon(2, false),
                    title: _getBarText(2),
                    activeIcon: _getBarIcon(2, true)),
                CustomBottomBarItem(
                    icon: _getBarIcon(3, false),
                    title: _getBarText(3),
                    activeIcon: _getBarIcon(3, true)),
              ])),
    );
  }
}
