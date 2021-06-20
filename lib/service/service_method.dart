// import 'dart:io';
import 'package:dio/dio.dart';
import 'dart:async';
import '../config/service_url.dart';

Future getSwiper() async {
  try {
    print('--------开始打印轮播图数据---------');
    Response<List<String>> response;
    Dio dio = new Dio();
    response = await dio.get(servicePath['getSwiper']);
    return response;
  } catch (e) {
    return print(e);
  }
}
