# 项目知识点：

1、statelessWidget statefulWidget(initSate 初始化状态、setState({})更改状态)

2、pubspec.yaml -> 包管理文件，类似 npm 的 package.json，安装依赖会默认读取 yaml

```dart
flutter packages get
```

3、material 风格与 cupertino 风格可以同时使用

4、flutter 中页面定义是采用下划线方式，如 main_page.dart，任何语句需要有结束符号。

5、页面中 http 的请求采用[Dio 库](https://github.com/flutterchina/dio)，请求外部网站要拦截请求头，具体用法：

```dart
  import 'package:dio/dio.dart';
  // Future对象是调用的时候可以使用then去回调
  Future getHttp(String text) async {
    try {
      Response response;
      var data = {'name': text};
      response = await Dio().post('http://192.168.1.101:3000/users/getText',
          queryParameters: data);
      return response;
    } catch (e) {
      return print(e);
    }
  }
  getHttp(typeController.text.toString()).then((res) {
        setState(() {
          showText = res.toString();
        });
  });

  var dio = new Dio();
  dio.options.headers = httpHeader;

  dio.options.contentType = "application/x-www-urlencoded"
```

6、用到的 Widget 组件：

底部导航栏：BottomNavigatorBarItem

输入框：TextField

```dart
 // 拿输入框的值，typeController.text.toString()
TextEditingController typeController = TextEditingController();
TextField(
    controller: TextEditingController(),
    decoration: (InputDecoration(
        contentPadding: EdgeInsets.all(20.0),
        labelText: '美女类型',
        helperText: '请输入你选择的类型',
    )),
    // 防止键盘一直弹着
    autofocus: false,
),
```

按钮：RaiseButton

弹出：showDialog

```dart
 showDialog(
        context: context,
        builder: (context) => AlertDialog(title: Text('美女类型不能为空')),
      );
```

FutureBuilder：可调用接口的组件

InkWell：可用于点击跳转的 GridView 组件

7、轮播图插件: [flutter_swiper](https://github.com/best-flutter/flutter_swiper/blob/master/README-ZH.md)

8、屏蔽适配方案：[flutter_screenUtil](https://github.com/OpenFlutter/flutter_screenutil/blob/master/README_CN.md)
