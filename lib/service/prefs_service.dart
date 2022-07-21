import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsServices{
  static final String _key = 'Key';

  static save(String user) async{
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(_key, jsonEncode({'user': user, 'isAuth':true}),);
  }
  static Future<bool> isAuth() async{
    var prefs = await SharedPreferences.getInstance();

    var jsonResult = prefs.getString(_key);
    if(jsonResult != null){
      var mapUser = jsonDecode(jsonResult);
      return mapUser('isAuth');
    }
    return false;
  }
}