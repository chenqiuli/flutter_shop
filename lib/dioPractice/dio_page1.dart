// 使用Dio动态展示接口数据到页面上，服务器是express服务器
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 拿输入框的值，typeController.text.toString()
  TextEditingController typeController = TextEditingController();
  String showText = '欢迎你来到美好人间';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('美好人间')),
        body: Container(
          child: Column(
            children: <Widget>[
              TextField(
                controller: typeController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20.0),
                  helperText: '请输入你喜欢的类型',
                  labelText: '美女类型',
                ),
              ),
              RaisedButton(onPressed: _choiceAction, child: Text('选择完毕')),
              Text(
                showText,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _choiceAction() {
    if (typeController.text.toString() == '') {
      // 输入框为空不调用请求
      showDialog(
        context: context,
        builder: (context) => AlertDialog(title: Text('美女类型不能为空')),
      );
    } else {
      getHttp(typeController.text.toString()).then((res) {
        setState(() {
          showText = res.toString();
        });
      });
    }
  }

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
}
