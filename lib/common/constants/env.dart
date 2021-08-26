class Env {
  Env(this.baseUrl, this.imageUrl);
  final String baseUrl;
  final String imageUrl;
}

mixin EnvValue {
  static final Env development =
      Env('https://devapi.g4ktv.com/api/v1', 'https://devapi.g4ktv.com/api/v1');
  static final Env staging =
      Env('https://devapi.g4ktv.com/api/v1', 'https://devapi.g4ktv.com/api/v1');
  static final Env production =
      Env('https://api.g4ktv.com/api/v1', 'https://api.g4ktv.com/api/v1');
}
