import '../index.dart';

// 在 Provider.of(context) 中有一个 bool 类型的 listen 参数，它代表了是否监听数据变化，默认为 true。

// 需要 混入[mixins] ChangeNotifier 
class CurrentIndexProvider with ChangeNotifier {

  int currentIndex = 0;

  changeIndex() {
    currentIndex += 1;
    notifyListeners();
  }
}