import 'package:logger/logger.dart';

class Log {
  static Logger log = Logger();

  static i(dynamic data) {
    log.i(data);
  }

  static e(dynamic data) {
    log.e(data);
  }

  static d(dynamic data) {
    log.d(data);
  }
}
