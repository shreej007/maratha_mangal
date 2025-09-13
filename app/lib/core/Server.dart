import 'package:logger/logger.dart';
import 'package:dio/dio.dart';
import 'package:app/core/Api.dart';

final logger = Logger();


class Server {

   Dio dio = Dio();
   Api? api;

   static const  String baseURL = "http://15.206.222.49:3004";

   Server(){
     dio.interceptors.add(CustomInterceptors());
     dio.options.baseUrl = baseURL;
     dio.options.connectTimeout = 5000 as Duration?; //5s
     dio.options.receiveTimeout = 3000 as Duration?;
     dio.options.contentType = 'application/json';
     dio.options.headers['content-Type'] = 'application/json';
     api = Api(dio,baseUrl: baseURL);
   }

   // Future<ResponseLogin> userLogin(String mobileNo, String otp) async {
   //   ResponseLogin response = await api!.userLogin(mobileNo,otp);
   //   return response;
   // }



}


class CustomInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.baseUrl+response.requestOptions.path}');
    print('RESPONSE[${response.statusCode}] => PATH: ${response.data}');
    print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.queryParameters}');
    super.onResponse(response, handler);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    print('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    super.onError(err, handler);
  }
}