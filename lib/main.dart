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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      initialRoute: '/',
      onGenerateRoute: RouterFluro.router.generator,
    );
  }
}
