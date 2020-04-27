import '../index.dart';

// 需要 混入[mixins] ChangeNotifier 
class CurrentIndexProvider with ChangeNotifier {

  int currentIndex = 0;

  changeIndex(int newIndex) {
    currentIndex = newIndex;
    notifyListeners();
  }
}