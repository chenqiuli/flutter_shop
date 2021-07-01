import 'package:flutter/material.dart';
import './pages/index_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import './provide/counter.dart';
import './provide/right_category_nav.dart';

void main() {
  // 注册provide
  var counter = Counter();
  var providers = Providers();
  var rightCategoryNavProvide = RightCategoryNavProvide();
  providers
    ..provide(Provider<Counter>.value(counter))
    ..provide(Provider<RightCategoryNavProvide>.value(rightCategoryNavProvide));
  runApp(ProviderNode(
    child: MyApp(),
    providers: providers,
  ));
}

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
