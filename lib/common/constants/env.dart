class Env {
  Env(this.uuid);
  final String uuid;
}

mixin EnvValue {
  static final Env development =
      Env('6e400001-b5a3-f393-e0a9-e50e24dcca9e');
  static final Env staging =
      Env('6e400001-b5a3-f393-e0a9-e50e24dcca9e');
  static final Env production =
      Env('6e400001-b5a3-f393-e0a9-e50e24dcca9e');
}
