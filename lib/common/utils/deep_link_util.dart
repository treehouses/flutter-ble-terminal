class DeepLinkUtil {
  static String parseDeepLinkUrl(String link) {
    final Uri? uri = Uri.tryParse(link);

    if (uri == null) return "";
    if (uri.pathSegments.length == 1) {
      return "";
    } else if (uri.pathSegments.length > 1) {
      final _id = uri.pathSegments[1];
      return _id;
    } else
      return "";
  }
}
