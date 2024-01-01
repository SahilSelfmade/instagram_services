class AppRoutesConstants {
  static AppRoutesConstants? _instance;
  // Avoid self instance
  AppRoutesConstants._();
  static AppRoutesConstants get instance {
    _instance ??= AppRoutesConstants._();
    return _instance!;
  }

  // * Routes Name
  static const String initial = '/';
  static const String home = '/home';
  static const String followers = '/followers';
  static const String views = '/views';
  static const String storyViews = '/story-views';
  static const String likes = '/likes';
}
