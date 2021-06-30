import 'package:flutter/material.dart';
import "../mock/mock_data.dart";
import "../model/CategoryModel.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("商品分类")),
      body: Container(
        child: Row(
          children: <Widget>[
            LeftCategoryNav(),
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
    return Container(
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
    );
  }
}
