// import 'dart:io';
import 'package:flutter/material.dart';
// import '../service/service_method.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
// import 'dart:convert' as convert;
import '../mock/mock_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('百姓生活+')),
        body: Container(
          child: Column(
            children: <Widget>[
              Flexible(
                child: SwiperDiy(swiperList: swiperList),
              ),
              TopNavigator(navigatorList: navigatorList),
            ],
          ),
        ),
      ),
    );
  }
}

// 轮播图插件：flutter_swiper
class SwiperDiy extends StatelessWidget {
  // 接收参数
  final List swiperList;
  const SwiperDiy({Key key, this.swiperList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(333.0),
      width: ScreenUtil().setWidth(750.0),
      child: Swiper(
        itemCount: swiperList.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            swiperList[index],
            fit: BoxFit.fill,
          );
        },
        autoplay: true,
        pagination: SwiperPagination(),
      ),
    );
  }
}

// 导航栏组件
class TopNavigator extends StatelessWidget {
  final List navigatorList;
  TopNavigator({Key key, this.navigatorList}) : super(key: key);

  Widget _gridViewItemUI(BuildContext context, item) {
    return InkWell(
      onTap: () {
        print("点击");
      },
      child: Column(
        children: <Widget>[
          Image.network(item['image'], width: ScreenUtil().setWidth(95)),
          Text(item['mallCategoryName']),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(320),
      padding: EdgeInsets.all(3.0),
      child: GridView.count(
        crossAxisCount: 5,
        padding: EdgeInsets.all(4.0),
        children: navigatorList.map((item) {
          return _gridViewItemUI(context, item);
        }).toList(),
      ),
    );
  }
}
