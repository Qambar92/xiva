import 'dart:convert';

import 'package:dastur2/model/acount_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Pref{
  static storename(String name)async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("name", name);

  }

  static Future<String?> lodename()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("name");
  }

  static Future<bool> removename()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.remove("name");
  }

  // User related
  static storeAcount(Acount acount)async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    String stringAcount = jsonEncode(Acount);
    pref.setString("acount", stringAcount);

  }

  static Future<Acount?> lodeAcount()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? stringAcount = pref.getString("acount");
    if(stringAcount == null || stringAcount.isEmpty){
      return null;
    }
    var map = jsonDecode(stringAcount);
    return Acount.fromJson(map);
  }

  static Future<bool> removeAcount()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.remove("acount");
  }
}
