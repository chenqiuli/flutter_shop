import 'package:flutter/material.dart';
import "../mock/mock_data.dart";
import "../model/CategoryModel.dart";
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
            Column(
              children: <Widget>[
                RightCategoryNav(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// 商品大类组件
class LeftCategoryNav extends StatefulWidget {
  _LeftCategoryNavState createState() => _LeftCategoryNavState();
}

class _LeftCategoryNavState extends State<LeftCategoryNav> {
  List categoryNameList = [];

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
  }

  // 单个商品大类组件
  Widget _leftInkWel(int index) {
    return InkWell(
      onTap: () {
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
          color: Colors.white,
          border: Border(
            bottom: BorderSide(color: Colors.black12, width: 1),
          ),
        ),
      ),
    );
  }
}

// 右边小类组件
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
