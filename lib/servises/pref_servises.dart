import 'dart:convert';

import 'package:dastur2/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Prefs{
  static storename(String name)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("name", name);

  }

  static Future<String?> lodename()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("name");
  }

  static Future<bool> removename()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("name");
  }

  // User related
  static storeUser(User user)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringUser = jsonEncode(User);
    prefs.setString("user", stringUser);

  }

  static Future<User?> lodeUser()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringUser = prefs.getString("user");
    if(stringUser == null || stringUser.isEmpty){
      return null;
    }
    var map = jsonDecode(stringUser);
    return User.fromJson(map);
  }

  static Future<bool> removeUser()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("user");
  }
}