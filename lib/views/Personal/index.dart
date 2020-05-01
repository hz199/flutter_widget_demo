import '../../index.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentIndex = Provider.of<CurrentIndexProvider>(context).currentIndex;

    return Scaffold(
      appBar: AppBar(
        title: Text('PersonalPage'),
      ),
      body: Container(
        child: Center(
          child: Text(currentIndex.toString()),
        ),
      ),
    );
  }
}
