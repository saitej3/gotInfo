import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthRepository {

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<User?> signInWithEmailAndLink(String email) async {
    try {
      await _firebaseAuth.sendSignInLinkToEmail(
        email: email,
        actionCodeSettings: ActionCodeSettings(
          url: 'https://your-app-url.com',
          androidPackageName: 'com.yourapp.package',
          handleCodeInApp: true,
          iOSBundleId: 'com.yourapp.bundle',
        ),
      );
      return null; // Return null as a placeholder until the link is verified
    } catch (e) {
      // Handle the error
      print('Error sending sign-in email link: $e');
      return null;
    }
  }

  Future<User?> completeSignInWithEmailAndLink(String email, String link) async {
    try {
      UserCredential credential = await _firebaseAuth.signInWithEmailLink(
        email: email,
        emailLink: link,
      );
      return credential.user;
    } catch (e) {
      // Handle the error
      print('Error completing sign-in with email link: $e');
      return null;
    }
  }

}


final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository();
});