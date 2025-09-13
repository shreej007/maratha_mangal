
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'Api.g.dart';

@RestApi(baseUrl: "")
abstract class Api {
  factory Api(Dio dio, {String baseUrl}) = _Api;

  // @POST("/api/auth/userLogin")
  // Future<ResponseLogin> userLogin(@Query("mobile_no") String mobileNo,@Query("otp") String otp);


}
