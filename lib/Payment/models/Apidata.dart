import 'package:dio/dio.dart';
import 'package:payment/Payment/models/shared/constant.dart';

class Diohelper{

 static late Dio dio;
  static void init(){
    dio=Dio(BaseOptions(baseUrl:baseUrl,receiveDataWhenStatusError: true ));
  }

static  Future<Response> postdata({required String endline,required Map<String,dynamic>data}){
    return dio.post(endline,data: data);
  }
}