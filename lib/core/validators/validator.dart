import 'dart:core';

class InputValidator {
  // Validate Email
  static bool isValidEmail(String email) {
    // RFC 5322 compliant regex for email validation
    final emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    );
    return emailRegex.hasMatch(email);
  }

  // Validate if email is empty or invalid
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    if (!isValidEmail(value.trim())) {
      return 'Invalid email';
    }
    return null;
  }

  // Validate Password (at least 8 characters, 1 uppercase, 1 lowercase, 1 number)
  static bool isStrongPassword(String password) {
    final passwordRegex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d\W]{8,}$',
    );
    return passwordRegex.hasMatch(password);
  }

  // Simple password validation (minimum 6 characters)
  static bool isValidPassword(String password) {
    return password.length >= 6;
  }

  // Validate password with customizable feedback
  static String? validatePassword(String? value, {bool requireStrong = false}) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (requireStrong) {
      if (!isStrongPassword(value)) {
        return 'Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, and one number.';
      }
    } else if (!isValidPassword(value)) {
      return 'Password must be at least 6 characters long.';
    }
    return null;
  }

  // Validate Password Confirmation
  static String? validatePasswordConfirmation(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'password confirmation is required';
    }
    if (value != password) {
      return 'passwords do not match';
    }
    return null;
  }

  // Validate Egyptian Phone Number
  static bool isValidEgyptianPhone(String phone) {
    // Egyptian phone numbers: +20xxxxxxxxxx or 01xxxxxxxxx
    final egyptianPhoneRegex = RegExp(
      r'^(\+20|0)1[0125][0-9]{8}$',
    );
    return egyptianPhoneRegex.hasMatch(phone);
  }

  // Validate International Phone Number (basic validation)
  static bool isValidInternationalPhone(String phone) {
    final internationalPhoneRegex = RegExp(
      r'^\+(?:[0-9] ?){6,14}[0-9]$',
    );
    return internationalPhoneRegex.hasMatch(phone);
  }

  // Validate phone number with customizable region
  static String? validatePhone(String? value, {bool egyptianOnly = true}) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    
    if (egyptianOnly) {
      if (!isValidEgyptianPhone(value)) {
        return 'please enter a valid Egyptian phone number';
      }
    } else if (!isValidInternationalPhone(value)) {
      return 'please enter a valid international phone number';
    }
    return null;
  }

  // Validate username (alphanumeric, underscores, 3-20 characters)
  static bool isValidUsername(String username) {
    final usernameRegex = RegExp(r'^[a-zA-Z0-9_]{3,20}$');
    return usernameRegex.hasMatch(username);
  }

  static String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username is required';
    }
    if (!isValidUsername(value)) {
      return 'Username must be alphanumeric, underscores, and between 3 and 20 characters long';
    }
    return null;
  }

  // Validate Name (letters, spaces, at least 2 characters)
  static bool isValidName(String name) {
    final nameRegex = RegExp(r'^[\p{L} ]{2,}$', unicode: true);
    return nameRegex.hasMatch(name);
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    }
    if (!isValidName(value)) {
      return 'Name must be letters, spaces, and at least 2 characters long';
    }
    return null;
  }

  // Validate URL
  static bool isValidUrl(String url) {
    final urlRegex = RegExp(
      r'^(https?:\/\/)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)$',
    );
    return urlRegex.hasMatch(url);
  }

  static String? validateUrl(String? value) {
    if (value == null || value.isEmpty) {
      return null; // URL is optional
    }
    if (!isValidUrl(value)) {
      return 'Invalid URL';
    }
    return null;
  }

  // Validate Date in format DD/MM/YYYY
  static bool isValidDate(String date) {
    final dateRegex = RegExp(
      r'^(0[1-9]|[12][0-9]|3[01])\/(0[1-9]|1[0-2])\/\d{4}$',
    );
    
    if (!dateRegex.hasMatch(date)) {
      return false;
    }
    
    // Additional validation for actual date values
    try {
      final parts = date.split('/');
      final day = int.parse(parts[0]);
      final month = int.parse(parts[1]);
      final year = int.parse(parts[2]);
      
      final dateObj = DateTime(year, month, day);
      
      // Check if the date actually exists (handles cases like 31/02/2023)
      return dateObj.day == day && 
             dateObj.month == month && 
             dateObj.year == year;
    } catch (e) {
      return false;
    }
  }

  static String? validateDate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Date is required';
    }
    if (!isValidDate(value)) {
      return 'Invalid date format. Please use DD/MM/YYYY';
    }
    return null;
  }

  // Validate Egyptian National ID (14 digits)
  static bool isValidEgyptianID(String id) {
    final idRegex = RegExp(r'^\d{14}$');
    return idRegex.hasMatch(id);
  }

  static String? validateEgyptianID(String? value) {
    if (value == null || value.isEmpty) {
      return 'national ID is required';
    }
    if (!isValidEgyptianID(value)) {
      return 'Invalid Egyptian National ID';
    }
    return null;
  }

  // Validate numeric input
  static bool isNumeric(String str) {
    return RegExp(r'^\d+$').hasMatch(str);
  }

  // Validate decimal numbers (e.g. for currency)
  static bool isDecimal(String str) {
    return RegExp(r'^\d+(\.\d{1,2})?$').hasMatch(str);
  }

  static String? validateAmount(String? value) {
    if (value == null || value.isEmpty) {
      return 'Amount is required';
    }
    if (!isDecimal(value)) {
      return 'Invalid amount';
    }
    return null;
  }
  
  // Validate ZIP/Postal code (5 digits for US)
  static bool isValidZipCode(String zip) {
    return RegExp(r'^\d{5}$').hasMatch(zip);
  }
  
  // Validate Arabic text (only Arabic characters)
  static bool isArabicText(String text) {
    return RegExp(r'^[\u0600-\u06FF\s]+$').hasMatch(text);
  }
  
  // Generic required field validator
  static String? validateRequired(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }
}