
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtils{
  static Future<SharedPreferences> get _instance async => _prefInstance ??= await SharedPreferences.getInstance();
  static SharedPreferences? _prefInstance;
  static Future<SharedPreferences?> init() async{
    _prefInstance = await _instance;
    return _prefInstance;
  }
  static String getString(String key,[String? defValue]){
    return _prefInstance?.getString(key) ?? defValue ?? "";
  }
  static Future<bool> setString(String key,String value) async{
    var prefs = await _instance;
    return prefs.setString(key, value);
  }
  // static String remove(String key,[String? defValue]) {
  //    return _prefInstance?.remove(key) ?? "";
  //  // return prefs.remove(key);
  // }
  static Future<bool> remove(String key) async{
    var prefs = await _instance;
    return prefs.remove(key);
  }

  static Future<bool> setBool(String key,bool? value) async{
    var prefs = await _instance;
    return prefs.setBool(key, value!);
  }
  static bool getBool(String key,[bool? value]) {
    //var prefs = await _instance;
    return _prefInstance?.getBool(key) ?? value ?? false;
    // return _prefInstance?.getString(key) ?? defValue ?? "";
  }

}



