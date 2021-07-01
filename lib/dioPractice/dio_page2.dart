// 模拟调用外部请求改变视图层，需要伪造请求头
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../config/httpHeaders.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String showText = '还没有数据';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: Scaffold(
            appBar: AppBar(title: Text('伪造请求数据')),
            body: Column(
              children: <Widget>[
                RaisedButton(onPressed: _getData, child: Text('点击请求')),
                Text(showText),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _getData() {
    print('--------------------');
    getHttp().then((value) {
      print(value);
      setState(() {
        // ？？？怎么取到里面key值的value
        showText = value.toString();
      });
    });
  }

  // 请求其他网站的接口，会报451，所以可以伪造请求头
  Future getHttp() async {
    try {
      Response response;
      Dio dio = new Dio(new BaseOptions(responseType: ResponseType.plain));
      dio.options.headers = httpHeader;
      response =
          await dio.post('https://time.geekbang.org/serv/v3/search/hot_words');
      return response;
    } catch (e) {
      return print(e);
      // http://test.baixingliangfan.cn/baixing/wxmini/homePageContent
      // {"lon":"115.02932","lat":"35.76189"}
    }
  }
}
