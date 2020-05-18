import 'package:flutter/material.dart';
import '../../../utils/flutter_screenutil.dart';

class NestedScrollViewDemo extends StatefulWidget {
  NestedScrollViewDemo({Key key}) : super(key: key);

  @override
  _NestedScrollViewDemoState createState() => _NestedScrollViewDemoState();
}

class _NestedScrollViewDemoState extends State<NestedScrollViewDemo>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollViewController;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
          return _returnHeaderSliverBuilder(boxIsScrolled);
        },
        body: TabBarView(
          children: <Widget>[
            Text('TabBarView1'),
            Text('TabBarView2'),
          ],
          controller: _tabController,
        ),
      ),
    );
  }

  List<Widget> _returnHeaderSliverBuilder(bool boxIsScrolled) {
    return [
      SliverAppBar(
          title: Text('Tab Controller'),
          pinned: true,
          floating: true,
          forceElevated: boxIsScrolled,
          expandedHeight: ScreenConfig.instance.setHeight(400.0),
          flexibleSpace: Container(
            child: Image.network(
              'http://study.closeeyes.cn/lol_0.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          bottom: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                text: "Home",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Help",
                icon: Icon(Icons.help),
              ),
            ],
          ))
    ];
  }
}
