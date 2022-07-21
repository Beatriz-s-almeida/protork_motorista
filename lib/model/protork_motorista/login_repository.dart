import 'dart:convert';
import 'package:dio/dio.dart';
import '../service/base_service.dart';
import 'login_model.dart';

class LoginRepository extends BaseService {
  Future<LoginModel> postLogin(LoginModel loginModel) async {
    try {
      Response result = await dio.post(loginendpoint, data: loginModel.toJson());
      return LoginModel.fromJson(json.decode(result.toString()));
    } catch (e) {
      rethrow;
    }
  }

}
