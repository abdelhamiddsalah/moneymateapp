import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseStoreServices {
  static const String usersCollection = 'users';
  static const String budgetsCollection = 'budgets';
  static const String transactionsCollection = 'transactions';
  
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> saveUserData({
    required String userId,
    required String name,
    required String email,
  
  }) async {
    try {
      await _firestore.collection(usersCollection).doc(userId).set({
        'userId': userId,
        'name': name,
        'email': email,
        'createdAt': Timestamp.now(),
        'updatedAt': Timestamp.now(),
      });
    } catch (e) {
      throw Exception('فشل في حفظ بيانات المستخدم: $e');
    }
  }
}