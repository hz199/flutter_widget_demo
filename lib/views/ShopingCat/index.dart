import '../../index.dart';

class ShopingCatPage extends StatelessWidget {
  const ShopingCatPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentIndex = Provider.of<CurrentIndexProvider>(context).currentIndex;

    return Scaffold(
      appBar: AppBar(
        title: Text('ShopingCatPage'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(currentIndex.toString()),
              FlatButton(
                onPressed: () {
                  Provider.of<CurrentIndexProvider>(context, listen: false).changeIndex(22);
                },
                child: Text('点击'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
