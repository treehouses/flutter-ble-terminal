import 'package:treehousesble/common/utils/utils.dart';

class FormValidator {
  static String lowerCaseRegex = '(?=.*[a-z])';
  static String upperCaseRegex = '(?=.*[A-Z])';
  static String symbolsRegex = '(?=.*[!@#\$%^&*])';
  static String numericRegex = '(?=.*[0-9])';

  static String? validateEmptyString(String text, String fieldName) {
    if (!UtilFunctions.isEmpty(text)) {
      return null;
    } else {
      return "$fieldName is required*";
    }
  }

  static String? validateIsNumber(String text) {
    if (RegExp('[0-9]').hasMatch(text)) {
      return null;
    } else {
      return "Please enter a valid number";
    }
  }

  static String? validateOnlyNumber(String text) {
    if (RegExp(r'^-?[0-9]+$').hasMatch(text)) {
      return null;
    } else {
      return "Please enter a valid number";
    }
  }

}
