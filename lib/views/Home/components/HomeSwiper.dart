import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../../../utils/flutter_screenutil.dart';
import '../config.dart';

/*
 * 轮播图
 */
class HomeSwiper extends StatelessWidget {
  const HomeSwiper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: ScreenConfig.instance.setHeight(260),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.grey,
            offset: Offset(5.0, 5.0),
            blurRadius: 10.0,
            spreadRadius: 1.0)
      ]),
      child: new Swiper(
          itemBuilder: (BuildContext context, int index) {
            return _swiperItem(index);
          },
          itemCount: homeSwiperImages.length,
          pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                  color: Color(0xFFd8d7e4),
                  size: 6.0,
                  activeColor: Color(0xFF52c6fb),
                  activeSize: 8.0)),
          // control: new SwiperControl(),
          autoplay: true,
          duration: 1000),
    );
  }

  Widget _swiperItem(int index) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 5.0, right: 5.0),
      height: ScreenConfig.instance.setHeight(250),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: NetworkImage(homeSwiperImages[index].imageUrl),
            fit: BoxFit.cover,
          )),
    );
  }
}
