import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  final List<CustomBottomBarItem> items;
  final int currentIndex;
  final Color backgroundColor;
  final Color textFocusColor;
  final ValueChanged<int> onTap;

  CustomBottomBar({
    @required this.items,
    this.currentIndex = 0,
    this.backgroundColor,
    this.textFocusColor,
    this.onTap,
  });

  @override
  _CustomBottomBar createState() {
    return new _CustomBottomBar();
  }
}

class _CustomBottomBar extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> children = <Widget>[];
    for (int i = 0; i < widget.items.length; i += 1) {
      children.add(_createItem(i));
    }

    // 添加中间缺角
    children.insert(2, Container(
      width: 70.0,
      height: 60.0,
      color: widget.backgroundColor,
      // shape: ,
      child: Container(
      ),
    ));

    return SafeArea(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: children,
    ));
  }

  Widget _createItem(int i) {
    CustomBottomBarItem item = widget.items[i];
    bool selected = i == widget.currentIndex;
    return Expanded(
        flex: 1,
        child: Container(
          color: widget.backgroundColor,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: InkResponse(
            onTap: () {
              if (widget.onTap != null) {
                widget.onTap(i);
              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                selected ? item.activeIcon : item.icon,
                DefaultTextStyle.merge(
                    style: TextStyle(
                      fontSize: 10,
                      // ignore: ambiguous_import
                      color: selected ? widget.textFocusColor : Colors.grey[900],
                    ),
                    child: item.title),
              ],
            ),
          ),
        ));
  }
}

class CustomBottomBarItem {
  final Widget icon;
  final Widget activeIcon;
  final Widget title;

  CustomBottomBarItem({@required this.icon, this.title, this.activeIcon})
      : assert(icon != null);
}
