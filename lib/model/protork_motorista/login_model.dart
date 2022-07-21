class LoginModel {
  String? password;
  String? username;
  String? authorization;

  LoginModel({this.password, this.username, this.authorization});

  toJson() {
    Map<String, dynamic> json = {};
    json['password'] = password;
    json['username'] = username;
    json["authorization"] = authorization;

    return json;
  }

  LoginModel.fromJson(Map<String, dynamic> json){
    password = json['password'];
    username = json['username'];
    authorization = json["authorization"];
  }
}

