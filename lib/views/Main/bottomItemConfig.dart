import 'package:flutter/material.dart';

final Color normalColor = Colors.grey[600];
final Color selectColor = Colors.redAccent;

class BottonItemConfig {
  final Text title;
  final Icon icon;
  final Text activeTitle;
  final Icon activeIcon;

  BottonItemConfig({
    this.title,
    this.icon,
    this.activeIcon,
    this.activeTitle
  });
}

List<BottonItemConfig> bottonItemConfig = [
  BottonItemConfig(
    title: Text('首页', style: TextStyle(fontSize: 10, color: normalColor),),
    icon: Icon(Icons.home, color: normalColor,),
    activeTitle: Text('首页', style: TextStyle(fontSize: 10, color: selectColor),),
    activeIcon: Icon(Icons.home, color: selectColor,)
  ),
  BottonItemConfig(
    title: Text('分类', style: TextStyle(fontSize: 10, color: normalColor),),
    icon: Icon(Icons.category, color: normalColor,),
    activeTitle: Text('分类', style: TextStyle(fontSize: 10, color: selectColor),),
    activeIcon: Icon(Icons.category, color: selectColor,)
  ),
  BottonItemConfig(
    title: Text('购物车', style: TextStyle(fontSize: 10, color: normalColor),),
    icon: Icon(Icons.shopping_cart, color: normalColor,),
    activeTitle: Text('购物车', style: TextStyle(fontSize: 10, color: selectColor),),
    activeIcon: Icon(Icons.shopping_cart, color: selectColor,)
  ),
  BottonItemConfig(
    title: Text('我的', style: TextStyle(fontSize: 10, color: normalColor),),
    icon: Icon(Icons.person, color: normalColor,),
    activeTitle: Text('我的', style: TextStyle(fontSize: 10, color: selectColor),),
    activeIcon: Icon(Icons.person, color: selectColor,)
  )
];