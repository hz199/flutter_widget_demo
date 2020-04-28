import '../../../index.dart';

// class CategroyForm extends StatelessWidget {
//   const CategroyForm({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         title: Text('表单'),
//       ),
//       body: Center(
//         child: Column(
//           children: <Widget>[],
//         ),
//       ),
//     );
//   }
// }

class CategroyForm extends StatefulWidget {
  @override
  _CategroyForm createState() => new _CategroyForm();
}

class _CategroyForm extends State<CategroyForm> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  Color _focusColor = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form 表单"),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
          key: _formKey, //设置globalKey，用于后面获取FormState
          autovalidate: true, //开启自动校验
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextFormField(
                    autofocus: true,
                    controller: _unameController,
                    decoration: InputDecoration(
                      labelText: "用户名：",
                      border: OutlineInputBorder(),
                      // hintText: "用户名或邮箱",
                      icon: Icon(Icons.person, color: Colors.orangeAccent),
                    ),
                    // 校验用户名
                    validator: (v) {
                      return v.trim().length > 0 ? null : "用户名不能为空";
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextFormField(
                    controller: _pwdController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            // gapPadding:
                            ),
                        labelText: "密码：",
                        // hintText: "您的登录密码",
                        icon: Icon(
                          Icons.lock,
                          color: Colors.orangeAccent,
                        )),
                    obscureText: true,
                    cursorColor: _focusColor,
                    //校验密码
                    validator: (v) {
                      return v.trim().length > 5 ? null : "密码不能少于6位";
                    }),
              ),
              // 登录按钮
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        child: Text("登录"),
                        color: Colors.red,
                        textColor: Colors.white,
                        onPressed: () {
                          // 通过_formKey.currentState 获取FormState后，
                          // 调用validate()方法校验用户名密码是否合法，校验
                          // 通过后再提交数据。
                          if ((_formKey.currentState as FormState).validate()) {
                            //验证通过提交数据
                          }
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
