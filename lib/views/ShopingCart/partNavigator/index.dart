import '../../../index.dart';

List<Widget> tabbars = [
  TabNavigator(index: 0,),
  TabNavigator(index: 1,),
  TabNavigator(index: 2,),
];

class PartNavigator extends StatefulWidget {
  PartNavigator({Key key}) : super(key: key);

  @override
  _PartNavigatorState createState() => _PartNavigatorState();
}

class _PartNavigatorState extends State<PartNavigator> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  _onPageChange(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Theme(
      data: ThemeData(primaryColor: Colors.blueAccent),
      child: Scaffold(
        body: PageView.builder(
          onPageChanged: _onPageChange,
          itemCount: tabbars.length,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            return tabbars[index];
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            _pageController.jumpToPage(index);
           _onPageChange(index);
          },
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.shifting,
          currentIndex: _currentIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                title: Text('首页$_currentIndex'), icon: Icon(Icons.home)),
            BottomNavigationBarItem(title: Text('书籍$_currentIndex'), icon: Icon(Icons.book)),
            BottomNavigationBarItem(
                title: Text('我的$_currentIndex'), icon: Icon(Icons.perm_identity)),
          ],
        ),
      ),
    );
  }
}

class TabNavigator extends StatefulWidget {
  TabNavigator({Key key, this.index}) : super(key: key);
  final int index;
  @override
  _TabNavigatorState createState() => _TabNavigatorState(index);
}

class _TabNavigatorState extends State<TabNavigator> with AutomaticKeepAliveClientMixin {
  _TabNavigatorState(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settins) {
        WidgetBuilder builder;
        switch (settins.name) {
          case '/':
            builder = (context) => ListPage(index);
            break;
        }
        return MaterialPageRoute(builder: builder);
      },
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}


class ListPage extends StatelessWidget {
  ListPage(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$index'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('$index'),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return DetailPage(index);
            }));
          },
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  DetailPage(this.index);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('DetailPage$index'),
      ),
    );
  }
}
