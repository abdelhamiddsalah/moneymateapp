import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthErrorHandler {
  // Handle Firebase Auth errors
  static void handleError(FirebaseAuthException e) {
    debugPrint('Firebase Auth Error: ${e.code} - ${e.message}');
    
    switch (e.code) {
      // Registration errors
      case 'weak-password':
        showErrorMessage('The password provided is too weak.');
        break;
      case 'email-already-in-use':
        showErrorMessage('An account already exists for that email.');
        break;
      case 'invalid-email':
        showErrorMessage('The email address is not valid.');
        break;
        
      // Login errors
      case 'user-not-found':
        showErrorMessage('No user found for that email.');
        break;
      case 'wrong-password':
        showErrorMessage('Wrong password provided for that user.');
        break;
      case 'user-disabled':
        showErrorMessage('This user account has been disabled.');
        break;
        
      // Password reset errors
      case 'expired-action-code':
        showErrorMessage('The password reset code has expired.');
        break;
      case 'invalid-action-code':
        showErrorMessage('The password reset code is invalid.');
        break;
        
      // General errors
      case 'operation-not-allowed':
        showErrorMessage('This operation is not allowed.');
        break;
      case 'too-many-requests':
        showErrorMessage('Too many attempts. Please try again later.');
        break;
      case 'network-request-failed':
        showErrorMessage('Network error. Check your connection and try again.');
        break;
      default:
        showErrorMessage('Authentication error: ${e.message}');
    }
  }

  // In actual implementation, you would connect this to your app's error display system
  static void showErrorMessage(String message) {
    debugPrint('AUTH ERROR: $message');
    // Here you would add code to display this message to the user
    // For example, using a SnackBar, Dialog, or passing to a state management solution
  }
  
  // Get user-friendly error message based on error code
  static String getErrorMessage(String errorCode) {
    switch (errorCode) {
      case 'weak-password':
        return 'The password provided is too weak.';
      case 'email-already-in-use':
        return 'An account already exists for that email.';
      case 'invalid-email':
        return 'The email address is not valid.';
      case 'user-not-found':
        return 'No user found for that email.';
      case 'wrong-password':
        return 'Wrong password provided for that user.';
      case 'user-disabled':
        return 'This user account has been disabled.';
      case 'expired-action-code':
        return 'The password reset code has expired.';
      case 'invalid-action-code':
        return 'The password reset code is invalid.';
      case 'operation-not-allowed':
        return 'This operation is not allowed.';
      case 'too-many-requests':
        return 'Too many attempts. Please try again later.';
      case 'network-request-failed':
        return 'Network error. Check your connection and try again.';
      default:
        return 'An authentication error occurred. Please try again.';
    }
  }
}