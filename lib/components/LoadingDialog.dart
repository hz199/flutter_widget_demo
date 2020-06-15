import 'package:flutter/material.dart';

/*
 * 自定义loading
 */
class LoadingDialog extends Dialog {
  LoadingDialog({Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: SizedBox(
            width: 120.0,
            height: 120.0,
            child: Stack(
              children: <Widget>[
                Opacity(
                  opacity: 0.3,
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: ShapeDecoration(
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
                        child: Text('loading...', style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
