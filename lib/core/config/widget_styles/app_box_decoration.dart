class AppBoxDecoration {
  static AppBoxDecoration? _instance;

  AppBoxDecoration._();
  static AppBoxDecoration get instance => _instance ??= AppBoxDecoration._();
}
