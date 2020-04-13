import 'package:flutter/material.dart';
import '../../routes/router_fluro.dart';
import './config.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: ListView.builder(
              itemCount: homeConfig.length, itemBuilder: _homeItemBuilder),
        ));
  }

  Widget _homeItemBuilder(BuildContext context, int index) {
    final _currentHomeConfig = homeConfig[index];

    return Container(
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(color: Colors.white
          // image: DecorationImage(
          //   image: NetworkImage(_currentHomeConfig.imageUrl),
          //   fit: BoxFit.cover,
          // ),
          ),
      child: Card(
        elevation: 10.0,
        child: ListTile(
            onTap: () {
              print(_currentHomeConfig.routerPath);
              RouterFluro.router.navigateTo(
                  context, '${_currentHomeConfig.routerPath}?index=$index');
            },
            title: Text(
              _currentHomeConfig.title,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(_currentHomeConfig.subtitle),
            leading: Hero(
              tag: _currentHomeConfig.imageUrl,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(10),
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: NetworkImage(_currentHomeConfig.imageUrl),
                      fit: BoxFit.cover,
                    )),
              ),
            )),
      ),
    );
  }
}
