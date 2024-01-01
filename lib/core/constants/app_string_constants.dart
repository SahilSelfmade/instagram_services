class AppStringConstants {
  static AppStringConstants? _instance;
  // Avoid self instance
  AppStringConstants._();
  static AppStringConstants get instance =>
      _instance ??= AppStringConstants._();

  //* error handler
  static const String success = 'success';
  static const String badRequestError = 'This email has been used before';
  static const String noContent = 'no_content';
  static const String forbiddenError = 'forbidden_error';
  static const String unauthorizedError = 'UNAUTHORIZED: Invalid Input Data';
  static const String notFoundError = 'ERROR: Not Found';
  static const String conflictError = 'conflict_error';
  static const String internalServerError = 'internal_server_error';
  static const String unknownError = 'unknown_error';
  static const String timeoutError = 'timeout_error';
  static const String defaultError = 'Error In Fetching Data';
  static const String cacheError = 'cache_error';
  static const String noInternetError = 'Please Check Your Internet Connection';
}
