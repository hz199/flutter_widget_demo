import 'package:flutter/cupertino.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../../../index.dart';

class DatePickerCategroy extends StatelessWidget {
  const DatePickerCategroy({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DatePicker 日历'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                _showDatePickerFunc(context);
              },
              child: Text('showDatePicker'),
              color: Colors.redAccent,
              textColor: Colors.white,
              shape: StadiumBorder(),
            ),
            MaterialButton(
              onPressed: () {
                _showCupertinoPicker(context);
              },
              child: Text('CupertinoPicker'),
              color: Colors.redAccent,
              textColor: Colors.white,
              shape: StadiumBorder(),
            ),
            MaterialButton(
              onPressed: () {
                _showCupertinoDatePicker(context);
              },
              child: Text('CupertinoDatePicker IOS'),
              color: Colors.blueAccent,
              textColor: Colors.white,
              shape: StadiumBorder(),
            ),
            MaterialButton(
              onPressed: () {
                _showCupertinoTimerPicker(context);
              },
              child: Text('CupertinoTimerPicker IOS'),
              color: Colors.blueAccent,
              textColor: Colors.white,
              shape: StadiumBorder(),
            ),
            MaterialButton(
              onPressed: () {
                _showCustomDatePicker(context);
              },
              child: Text('pub插件选择日期'),
              color: Colors.orangeAccent,
              textColor: Colors.white,
              shape: StadiumBorder(),
            ),
            MaterialButton(
              onPressed: () {
                _showCustomTimePicker(context);
              },
              child: Text('pub插件选择日期事件'),
              color: Colors.orangeAccent,
              textColor: Colors.white,
              shape: StadiumBorder(),
            ),
          ],
        ),
      ),
    );
  }

  void _showCustomTimePicker(BuildContext context) {
    DatePicker.showDateTimePicker(context,
        // 是否展示顶部操作按钮
      showTitleActions: true,
      // 最小时间
      minTime: DateTime(2018, 3, 5),
      // 最大时间
      maxTime: DateTime(2099, 6, 7),
      // change事件
      onChanged: (date) {
        print('change $date');
      },
        // 确定事件
        onConfirm: (date) {
          print('confirm $date');
        },
        // 当前时间
        currentTime: DateTime.now(),
        // 语言
        locale: LocaleType.zh);
  }

  void _showCustomDatePicker(BuildContext context) {
    DatePicker.showDatePicker(context,
        // 是否展示顶部操作按钮
      showTitleActions: true,
      // 最小时间
      minTime: DateTime(2018, 3, 5),
      // 最大时间
      maxTime: DateTime(2099, 6, 7),
      // change事件
      onChanged: (date) {
        print('change $date');
      },
        // 确定事件
        onConfirm: (date) {
          print('confirm $date');
        },
        // 当前时间
        currentTime: DateTime.now(),
        // 语言
        locale: LocaleType.zh);
  }

  void _showDatePickerFunc(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(), //初始选中日期
      firstDate: DateTime(1990), //可选日期范围第一个日期
      lastDate: DateTime(2100), //可选日期范围最后一个日期
      locale: Locale('zh', 'CH'),
      selectableDayPredicate: (dateTime) {
        if (dateTime.day == 10) {
          return false;
        }
        return true;
      },
      initialDatePickerMode: DatePickerMode.day, //初始化选择模式，有day和year两种
    ).then((dateTime) {
      print('当前选择了：${dateTime.year}年${dateTime.month}月${dateTime.day}日');
    });
  }

  void _showCupertinoPicker(BuildContext context) {
    final picker = CupertinoPicker(
        itemExtent: 30,
        onSelectedItemChanged: (position) {
          print(position);
        },
        children: [
          Text("0"),
          Text("1"),
          Text("2"),
          Text("3"),
          Text("4"),
        ]);

    showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            child: picker,
          );
        });
  }

  void _showCupertinoDatePicker(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (cxt) {
          return Container(
              height: 200,
              child: CupertinoDatePicker(
                onDateTimeChanged: (date) {
                  print("the date is ${date.toString()}");
                },
                initialDateTime: DateTime.now(),
              ));
        });
  }

  void _showCupertinoTimerPicker(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (cxt) {
          return Container(
            child: CupertinoTimerPicker(onTimerDurationChanged: (duration) {
              print(duration);
            }),
          );
        });
  }
}
