import 'package:flutter/material.dart';
import './pages/index_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(750, 1334),
      builder: () => Container(
        child: MaterialApp(
          title: '眼镜App',
          // 去掉页面右上角的debug模式
          debugShowCheckedModeBanner: false,
          // 设置整体风格主题，包括颜色和字体
          theme: ThemeData(
            primaryColor: Colors.pink,
          ),
          home: IndexPage(),
        ),
      ),
    );
  }
}
