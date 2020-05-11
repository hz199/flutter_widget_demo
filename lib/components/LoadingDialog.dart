import 'package:flutter/material.dart';

/*
 * 自定义loading
 */
class LoadingDialog extends Dialog {
  final Widget child;

  LoadingDialog({Key key, this.child = const Text('loading...')})
      : super(key: key, backgroundColor: Colors.redAccent);


  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      
      child: Center(
        child: SizedBox(
          width: 120.0,
          height: 120.0,
          child: Container(
            decoration: ShapeDecoration(
              color: Color(0xffffffff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: child,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}