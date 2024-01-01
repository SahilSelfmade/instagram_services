class AppTextStyle {
  static AppTextStyle? _instance;

  AppTextStyle._();
  static AppTextStyle get instance => _instance ??= AppTextStyle._();
}
