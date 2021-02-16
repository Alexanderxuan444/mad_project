class Validation {
  String validateEmail(String value) {
    // return null if valid
    // otherwise string (with the error message) if invalid
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.length < 4) {
      return 'Password must be at least 4 character or more';
    }
    return null;
  }

  String validateCPassword(String value) {
    if (value.length < 4) {
      return 'Password must be at least 4 character or more';
    }
    return null;
  }
}
