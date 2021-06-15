import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './cart_page.dart';
import './category_page.dart';
import './home_page.dart';
import './member_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  // 定义底部组件的数组，类型为BottomNavigationBarItem
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search),
      title: Text('分类页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.shopping_cart),
      title: Text('购物车'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      title: Text('我的'),
    ),
  ];

  final List bottomBodies = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    MemberPage(),
  ];

  // 点击哪个标签跳到哪个页面
  int currentIndex = 0; // 索引
  var currentPage;

  @override
  void initState() {
    // 初始化状态值，类似react初始化this.state
    currentPage = bottomBodies[currentIndex]; // 渲染哪个组件
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 定义页面颜色，默认是白色
      backgroundColor: Color.fromRGBO(244, 255, 255, 1.0),
      // 定义底部导航
      bottomNavigationBar: BottomNavigationBar(
        // 所有路由页面组件
        items: bottomTabs,
        currentIndex: currentIndex,
        // 底部导航的风格
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            currentPage = bottomBodies[currentIndex];
          });
        },
      ),
      body: currentPage,
    );
  }
}
