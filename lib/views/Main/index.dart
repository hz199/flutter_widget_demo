import 'package:flutter/material.dart';
import '../../components/CustomBottomBar/index.dart';
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
                icon: Icon(Icons.home, color: Colors.grey[600],),
                title: Text('首页', style: TextStyle(fontSize: 12),),
                activeIcon: Icon(Icons.home, color: Colors.redAccent,)),
            CustomBottomBarItem(
                icon: Icon(Icons.category, color: Colors.grey[600],),
                title: Text('分类', style: TextStyle(fontSize: 12),),
                activeIcon: Icon(Icons.category, color: Colors.redAccent,)),
            CustomBottomBarItem(
                icon: Icon(Icons.shop, color: Colors.grey[600],),
                title: Text('购物车', style: TextStyle(fontSize: 12),),
                activeIcon: Icon(Icons.shop, color: Colors.redAccent,)),
            CustomBottomBarItem(
                icon: Icon(Icons.person, color: Colors.grey[600],),
                title: Text('我的', style: TextStyle(fontSize: 12),),
                activeIcon: Icon(Icons.person, color: Colors.redAccent,)),
          ]),
    );
  }
}
