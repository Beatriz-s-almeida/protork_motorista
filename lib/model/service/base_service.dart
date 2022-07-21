
import 'package:dio/dio.dart';

class BaseService{
  Dio dio = Dio(
    BaseOptions(baseUrl: 'http://3.145.198.199:8080/api/'),
  );
  var loginendpoint ='login';
  var detaisviagens = 'travels/{id}';
}