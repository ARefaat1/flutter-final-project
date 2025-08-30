class AppRegExp {
  /// Email Regex
  static final RegExp email = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  /// Password: at least 6 chars, 1 uppercase, 1 number
  static final RegExp password = RegExp(r'^(?=.*[A-Z])(?=.*\d).{6,}$');

  /// Username: at least 3 chars, only letters/numbers/underscore
  static final RegExp username = RegExp(r'^[a-zA-Z0-9_]{3,}$');

  /// Phone (مصر مثال): يبدأ بـ 01 + 9 أرقام
  static final RegExp phone = RegExp(r'^(01)[0-9]{9}$');
}
