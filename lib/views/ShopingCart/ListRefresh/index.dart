import 'package:flutter/material.dart';
import '../../../model/shopingCart/refreshModel.dart';
import '../../../services/shopingCart.dart';
import '../../../components/loading_container.dart';

class ListRefreshPage extends StatefulWidget {
  ListRefreshPage({Key key}) : super(key: key);

  @override
  _ListRefreshPageState createState() => _ListRefreshPageState();
}

class _ListRefreshPageState extends State<ListRefreshPage> {
  bool _isLoading = true;
  List<ResultModel> _refreshDataList = [];

  @override
  void initState() {
    super.initState();
    _handleRefresh();
  }

  Future<Null> _handleRefresh() async {
    try {
      RefreshModel refreshData = await ShopingCartServices.fetchRefreshData();
      setState(() {
        _refreshDataList = refreshData.result;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
    return null;
  }

  List<Widget> _getListChild(List<ResultModel> list) {
    List<Widget> results = [];

    list.forEach((item) {
      results.add(ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(item.imageUrl),
        ),
        title: Text(item.county),
        subtitle: Text(item.timer.toString()),
      ));
    });

    return results;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoadingContainer(
        isLoading: _isLoading,
        child: RefreshIndicator(
          color: Colors.orangeAccent,
          onRefresh: _handleRefresh,
          child: ListView(
            children: _getListChild(_refreshDataList),
          ),
        ),
      ),
    );
  }
}
