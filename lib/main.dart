import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import './routes/router_fluro.dart';
import './routes/route_config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 配置路由
    final router = Router();
    Routes.configureRoutes(router);
    RouterFluro.router = router;

    return MaterialApp(
      title: 'Flutter学习笔记',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        primaryColorLight: Colors.white,
        primaryColorBrightness: Brightness.light,
        primaryColor: Color(0xFFffffff),
      ),
      initialRoute: '/',
      onGenerateRoute: RouterFluro.router.generator,
    );
  }
}
