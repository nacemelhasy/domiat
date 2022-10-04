import 'dart:ffi';

import 'package:domiat/main.dart';
class Repo{
  // for add new number in local database
void setInt({
  required String key,
  required int value,
}) {
  pref.setInt(key, value);
}
// for get data from local database
int? getInt({required String key}) {
  return pref.getInt(key);
}

}
