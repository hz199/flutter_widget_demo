import './index.dart';
import './routes/route_config.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 配置路由
    final router = Router();
    Routes.configureRoutes(router);
    RouterFluro.router = router;

    return MultiProvider(
        providers: [
          // 测试 store
          ChangeNotifierProvider(create: (_) => CurrentIndexProvider())
        ],
        child: MaterialApp(
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: [
            Locale('en', 'US'),
            Locale('zh', 'CH'),
          ],
          title: 'Flutter学习笔记',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            primaryColorLight: Colors.white,
            primaryColorBrightness: Brightness.light,
            primaryColor: Color(0xFFffffff),
            // iconTheme: IconThemeData(
            //   color: Color(0xFF888888),
            //   size: 35.0,
            // ),
          ),
          initialRoute: '/',
          onGenerateRoute: RouterFluro.router.generator,
        ));
  }
}
