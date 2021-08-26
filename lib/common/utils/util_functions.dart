import 'package:flutter/widgets.dart';

class UtilFunctions {
  /// the int values in `params` have to be stringified otherwise excception
  /// occurs
  static Uri getUri({required String url, Map<String, dynamic>? params}) {
    var _temp = Uri.parse(url);
    var _uri = Uri.https(_temp.authority, _temp.path, params);
    return _uri;
  }

  static String getImage(String? image) {
    if (image != null) {
      if (image.toLowerCase().contains("http")) {
        return image;
      }
      return "";
    }
    return "";
  }


  static bool isEmpty(dynamic data) {
    if (data == null) {
      return true;
    }
    var d = data.toString().trim();
    if (d == "" || d == "[]" || d == "{}") {
      return true;
    }
    return false;
  }

}
