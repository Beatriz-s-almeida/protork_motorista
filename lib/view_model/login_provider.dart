import 'package:flutter/foundation.dart';
import '../model/protork_motorista/login_model.dart';
import '../model/protork_motorista/login_repository.dart';

class LoginProvider with ChangeNotifier {
  LoginModel _loginModel = LoginModel();
  LoginRepository _loginRepository = LoginRepository();

  int status = 0;

  get getLogin => _loginModel;

  set setPassword(String? value) {
    _loginModel.password = value;
  }
  set setUsername(String? value){
    _loginModel.username = value;
  }

  Future<void> postLogin() async{
    try{
      var login = await _loginRepository.postLogin(_loginModel);
      print(login.toJson());
      status = 1;
    } catch(e){
      status = 2;
      print('chegou aqui');
      print(e);

      print(_loginModel.password);
      print(_loginModel.username);
    }
    notifyListeners();
  }
}
