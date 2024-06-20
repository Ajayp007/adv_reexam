import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper {
  Future<void> setSharedData(List<String> l1) async {
    SharedPreferences shr = await SharedPreferences.getInstance();

    shr.setStringList("like", l1);
  }

  Future<List<String>> getSharedData() async {
    List<String>? like;
    SharedPreferences shr = await SharedPreferences.getInstance();
    like = shr.getStringList("like")!;
    return like;
  }
}
