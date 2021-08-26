class Env {
  Env(this.baseUrl, this.imageUrl);
  final String baseUrl;
  final String imageUrl;
}

mixin EnvValue {
  static final Env development =
      Env('', '');
  static final Env staging =
  Env('', '');
  static final Env production =
  Env('', '');
}
