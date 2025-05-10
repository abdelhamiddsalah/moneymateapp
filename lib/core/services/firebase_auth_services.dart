import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:moneymateapp/core/errors/auth_error_handlers.dart';

class FirebaseAuthServices {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  
  // Get current user
  User? get currentUser => _firebaseAuth.currentUser;
  
  // Stream to listen to authentication state changes
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  // Create new account
  Future<UserCredential?> createAccount(String emailAddress, String password) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      AuthErrorHandler.handleError(e);
      return null;
    } catch (e) {
      debugPrint('Unexpected error during account creation: $e');
      return null;
    }
  }

  // Login with email and password
  Future<UserCredential?> login(String emailAddress, String password) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      AuthErrorHandler.handleError(e);
      return null;
    } catch (e) {
      debugPrint('Unexpected error during login: $e');
      return null;
    }
  }

  // Google Sign-in
  Future<UserCredential?> signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      
      // Check if sign-in was canceled
      if (googleUser == null) {
        return null;
      }

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in with credential and return the UserCredential
      return await _firebaseAuth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      AuthErrorHandler.handleError(e);
      return null;
    } catch (e) {
      debugPrint('Unexpected error during Google sign-in: $e');
      return null;
    }
  }

  // Send password reset email
  Future<bool> forgotPassword(String emailAddress) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: emailAddress);
      return true;
    } on FirebaseAuthException catch (e) {
      AuthErrorHandler.handleError(e);
      return false;
    } catch (e) {
      debugPrint('Unexpected error sending password reset: $e');
      return false;
    }
  }

  // Verify password reset code and set new password
  Future<bool> resetPassword(String code, String newPassword) async {
    try {
      await _firebaseAuth.confirmPasswordReset(
        code: code,
        newPassword: newPassword,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      AuthErrorHandler.handleError(e);
      return false;
    } catch (e) {
      debugPrint('Unexpected error during password reset: $e');
      return false;
    }
  }

  // Change password for logged-in user
  Future<bool> changePassword(String currentPassword, String newPassword) async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) return false;
      
      // Re-authenticate user before changing password
      final credential = EmailAuthProvider.credential(
        email: user.email!,
        password: currentPassword,
      );
      
      await user.reauthenticateWithCredential(credential);
      await user.updatePassword(newPassword);
      return true;
    } on FirebaseAuthException catch (e) {
      AuthErrorHandler.handleError(e);
      return false;
    } catch (e) {
      debugPrint('Unexpected error changing password: $e');
      return false;
    }
  }

  // Update user profile
  Future<bool> updateProfile({String? displayName, String? photoURL}) async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) return false;
      
      await user.updateDisplayName(displayName);
      await user.updatePhotoURL(photoURL);
      return true;
    } on FirebaseAuthException catch (e) {
      AuthErrorHandler.handleError(e);
      return false;
    } catch (e) {
      debugPrint('Unexpected error updating profile: $e');
      return false;
    }
  }

  // Logout
  Future<void> logout() async {
    await _firebaseAuth.signOut();
    await GoogleSignIn().signOut(); // Also sign out from Google
  }
}