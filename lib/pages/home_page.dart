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

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    print("-------打印首页数据--------");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('眼镜App')),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                // 没有被SingleChildScrollView包裹，SwiperDiy要用Flexible包裹
                // Flexible(
                //   child: SwiperDiy(swiperList: swiperList),
                // ),
                SwiperDiy(swiperList: swiperList),
                TopNavigator(navigatorList: navigatorList),
                AdBanner(adPicture: advertiseList),
                Recommend(recommendList: recommendList),
                HotGoods(
                  hotList: hotList,
                ),
              ],
            ),
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
          Image.network(
            item['image'],
            width: ScreenUtil().setWidth(84),
            height: ScreenUtil().setHeight(84),
          ),
          Text(item['mallCategoryName']),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(340),
      padding: EdgeInsets.all(3.0),
      child: GridView.count(
        // 禁止滑动
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        padding: EdgeInsets.all(4.0),
        children: navigatorList.map((item) {
          return _gridViewItemUI(context, item);
        }).toList(),
      ),
    );
  }
}

// 广告组件
class AdBanner extends StatelessWidget {
  final String adPicture;
  const AdBanner({Key key, this.adPicture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(194),
      margin: EdgeInsets.all(10.0),
      child: Image.network(
        adPicture,
      ),
    );
  }
}

// 商品推荐
class Recommend extends StatelessWidget {
  final List recommendList;
  const Recommend({Key key, this.recommendList}) : super(key: key);

  // 标题小组件
  Widget _titleWidget() {
    return Container(
      height: ScreenUtil().setHeight(50),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(20.0, 2.0, 0, 2.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.5, color: Colors.black12),
        ),
      ),
      child: Text(
        '商品推荐',
        style: TextStyle(
          color: Colors.pink,
        ),
      ),
    );
  }

  // 单个list小组件
  Widget _itemWidget(item) {
    return InkWell(
      onTap: () {
        print('点击了推荐');
      },
      child: Container(
        height: ScreenUtil().setHeight(320),
        width: ScreenUtil().setWidth(250),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            right: BorderSide(width: 0.5, color: Colors.black12),
          ),
        ),
        child: Column(
          children: <Widget>[
            Image.network(
              item['image'],
              width: ScreenUtil().setWidth(195),
              height: ScreenUtil().setHeight(190),
            ),
            Text(
              '￥${item['newPrice']}',
              style: TextStyle(
                color: Colors.black26,
                fontSize: 20.0,
              ),
            ),
            Text(
              '￥${item['olePrice']}',
              style: TextStyle(
                decoration: TextDecoration.lineThrough, // 价格上有删除线
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }

  // 横向列表小组件
  Widget _listWidget() {
    return Container(
      height: ScreenUtil().setHeight(330),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return _itemWidget(recommendList[index]);
        },
        itemCount: recommendList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(380),
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: <Widget>[
          _titleWidget(),
          _listWidget(),
        ],
      ),
    );
  }
}

// 火爆专区组件
class HotGoods extends StatelessWidget {
  final List hotList;
  HotGoods({Key key, this.hotList}) : super(key: key);

  Widget _hotTitle() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Text(
        '火爆专区',
        style: TextStyle(
          fontSize: ScreenUtil().setSp(26),
        ),
      ),
      alignment: Alignment.center,
    );
  }

  Widget _itemList(item) {
    return Container(
      width: ScreenUtil().setWidth(365),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Image.network(
            item['image'],
            width: ScreenUtil().setWidth(355),
          ),
          Text(
            item['desc'],
            maxLines: 2,
          ),
          Row(
            children: <Widget>[
              Text(
                '￥${item['price']}',
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: ScreenUtil().setSp(24),
                ),
              ),
              Expanded(child: Text('')),
              Text(
                '￥${item['mallPrice']}',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: ScreenUtil().setSp(24),
                  decoration: TextDecoration.lineThrough,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _allList() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(3.0, 3.0, 3.0, 3.0),
      child: Wrap(
        spacing: 2,
        children: hotList.map((item) {
          return _itemList(item);
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _hotTitle(),
          _allList(),
        ],
      ),
    );
  }
}
