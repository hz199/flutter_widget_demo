import '../../../index.dart';
import '../../../components/CustomTabs/index.dart';

class VerticalNav extends StatelessWidget {
  const VerticalNav({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyCustomTabs(),
      )
    );
  }
}
