import 'package:shared_preferences/shared_preferences.dart';


class Setting {
  static SharedPreferences _preferences;

  static const _keysort = 'sort';
  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setSort(int sort) async =>
      await _preferences.setInt(_keysort, sort);
  static int getSort()=>_preferences.getInt(_keysort);

}



