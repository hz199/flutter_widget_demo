import '../../../index.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../model/shopingCart/refreshModel.dart';
import '../../../services/shopingCart.dart';
import '../../../components/loading_container.dart';

class PullUpLoadMore extends StatefulWidget {
  PullUpLoadMore({Key key}) : super(key: key);

  @override
  _PullUpLoadMoreState createState() => _PullUpLoadMoreState();
}

class _PullUpLoadMoreState extends State<PullUpLoadMore> {
  // 列表数据
  List<ResultModel> _refreshDataList = [];
  // 整体loading状态
  bool _isLoading = true;
  // 下拉上拉 控制器
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();

    _handleRefresh('refresh');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LoadingContainer(
      isLoading: _isLoading,
      child: SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        header: WaterDropHeader(),
        footer: CustomFooter(
          builder: (BuildContext context,LoadStatus mode){
            Widget body ;
            if(mode==LoadStatus.idle){
              body =  Text("上拉加载");
            }
            else if(mode==LoadStatus.loading){
              body =  CircularProgressIndicator();
            }
            else if(mode == LoadStatus.failed){
              body = Text("加载失败！点击重试！");
            }
            else if(mode == LoadStatus.canLoading){
               body = Text("松手,加载更多!");
            }
            else{
              body = Text("没有更多数据了!");
            }
            return Container(
              height: 55.0,
              child: Center(child:body),
            );
          },
        ),
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        controller: _refreshController,
        child: ListView.builder(
            itemBuilder: _itemBuilder, itemCount: _refreshDataList.length),
      ),
    ));
  }

  Widget _itemBuilder(BuildContext context, int index) {
    ResultModel currentData = _refreshDataList[index];

    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(currentData.imageUrl),
      ),
      title: Text(currentData.county),
      subtitle: Text(currentData.timer.toString()),
    );
  }

  Future<Null> _handleRefresh(String type) async {
    try {
      RefreshModel refreshData = await ShopingCartServices.fetchRefreshData();
      if (type == 'refresh') {
        setState(() {
          _refreshDataList = refreshData.result;
          _isLoading = false;
        });
      } else if (type == 'loadMore') {
        setState(() {
          _refreshDataList.addAll(refreshData.result);
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
    return null;
  }

  // 刷新数据
  void _onRefresh() async {
    await _handleRefresh('refresh');
    _refreshController.refreshCompleted();
  }

  // 加载更多
  void _onLoading() async {
    await _handleRefresh('loadMore');
    _refreshController.loadComplete();
  }
}
