import 'package:flutter/material.dart';
import "../mock/mock_data.dart";
import "../model/CategoryModel.dart";
import "../model/CategoryListModel.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import '../provide/right_category_nav.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("商品分类")),
      body: Container(
        child: Row(
          children: <Widget>[
            LeftCategoryNav(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  RightCategoryNav(),
                  RightGoodLists(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* -------------------- 商品大类组件 ---------------------*/
class LeftCategoryNav extends StatefulWidget {
  _LeftCategoryNavState createState() => _LeftCategoryNavState();
}

class _LeftCategoryNavState extends State<LeftCategoryNav> {
  List<CategoryData> categoryNameList = [];
  var idx = 0;

  @override
  Widget build(BuildContext context) {
    _getCategory();
    return Container(
      width: ScreenUtil().setWidth(180),
      decoration: BoxDecoration(
        border: Border(right: BorderSide(width: 1, color: Colors.black12)),
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return _leftInkWel(index);
        },
        itemCount: categoryNameList.length,
      ),
    );
  }

  void _getCategory() {
    CategoryModel list = CategoryModel.fromJson(categoryList);
    // list.data.forEach((item) => print(item.mallCategoryName));
    setState(() {
      categoryNameList = list.data;
    });
    // 初始化右边小类
    Provide.value<RightCategoryNavProvide>(context)
        .changeRightCategoryList(categoryNameList[0].bxMallSubDto);
  }

  // 单个商品大类组件
  Widget _leftInkWel(int index) {
    bool isClick = false;
    isClick = (index == idx) ? true : false;
    return InkWell(
      onTap: () {
        /*这里要延时加载  否则会抱The widget on which setState() or markNeedsBuild() was called was:错误*/
        Future.delayed(Duration(milliseconds: 200)).then((e) {
          setState(() {
            idx = index;
          });
        });
        // 点击大类改变小类
        Provide.value<RightCategoryNavProvide>(context)
            .changeRightCategoryList(categoryNameList[index].bxMallSubDto);
      },
      child: Container(
        width: ScreenUtil().setWidth(180),
        height: ScreenUtil().setHeight(100),
        padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
        child: Text(
          categoryNameList[index].mallCategoryName,
          style: TextStyle(
            fontSize: ScreenUtil().setSp(28),
          ),
        ),
        decoration: BoxDecoration(
          color: isClick ? Colors.grey : Colors.white,
          border: Border(
            bottom: BorderSide(color: Colors.black12, width: 1),
          ),
        ),
      ),
    );
  }
}

/* -------------------- 右边小类组件 ---------------------*/
class RightCategoryNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Provide<RightCategoryNavProvide>(
      builder: (context, child, data) {
        return Container(
          width: ScreenUtil().setWidth(570),
          height: ScreenUtil().setHeight(80),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(width: 1, color: Colors.black12),
            ),
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return _listItemWidget(data.rightCategoryList[index]);
            },
            itemCount: data.rightCategoryList.length,
          ),
        );
      },
    ));
  }

  Widget _listItemWidget(BxMallSubDto item) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0),
        child: Provide<RightCategoryNavProvide>(
          builder: (context, child, data) {
            return Text(item.mallSubName);
          },
        ),
      ),
    );
  }
}

/* -------------------- 右边商品列表组件 ---------------------*/
class RightGoodLists extends StatefulWidget {
  const RightGoodLists({Key key}) : super(key: key);

  @override
  _RightGoodListsState createState() => _RightGoodListsState();
}

class _RightGoodListsState extends State<RightGoodLists> {
  List<CategoryListData> goodList = [];

  @override
  Widget build(BuildContext context) {
    _getCategoryList();
    return Container(
      width: ScreenUtil().setWidth(570),
      height: ScreenUtil().setHeight(1000),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return _listItemWidget(index);
        },
        itemCount: goodList.length,
      ),
    );
  }

  void _getCategoryList() {
    CategoryListModel list = CategoryListModel.fromJson(goodLists);
    setState(() {
      goodList = list.data;
    });
  }

  // 图片小组件
  Widget _phototWidget(int index) {
    return Container(
      width: ScreenUtil().setWidth(200),
      child: Image.network(goodList[index].image),
    );
  }

  // 标题小组件
  Widget _titleWidget(int index) {
    return Container(
      width: ScreenUtil().setWidth(370),
      child: Text(
        goodList[index].goodsName,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: ScreenUtil().setSp(28)),
      ),
    );
  }

  // 商品价格
  Widget _priceWidget(int index) {
    return Container(
      width: ScreenUtil().setWidth(370),
      margin: EdgeInsets.only(top: 20.0),
      child: Row(
        children: <Widget>[
          Text(
            '价格：${goodList[index].presentPrice}',
            style: TextStyle(
              color: Colors.pink,
              fontSize: ScreenUtil().setSp(30.0),
            ),
          ),
          Text(
            '价格：${goodList[index].oriPrice}',
            style: TextStyle(
              color: Colors.grey,
              fontSize: ScreenUtil().setSp(20.0),
              decoration: TextDecoration.lineThrough,
            ),
          )
        ],
      ),
    );
  }

  Widget _listItemWidget(int index) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(width: 1, color: Colors.black12),
          ),
        ),
        child: Row(
          children: <Widget>[
            _phototWidget(index),
            Column(
              children: <Widget>[
                _titleWidget(index),
                _priceWidget(index),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
