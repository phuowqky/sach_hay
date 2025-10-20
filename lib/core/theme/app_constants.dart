class AppConstants {
  // App Info
  static const String appName = 'E Book';
  static const String appVersion = '1.0.0';

  // API
  static const String baseUrl = 'https://your-api-url.com';
  static const int timeoutDuration = 30; // seconds

  // Storage Keys
  static const String tokenKey = 'auth_token';
  static const String userKey = 'user_data';

  // Animation Durations
  static const Duration shortAnimation = Duration(milliseconds: 200);
  static const Duration mediumAnimation = Duration(milliseconds: 300);
  static const Duration longAnimation = Duration(milliseconds: 500);

  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;
}
