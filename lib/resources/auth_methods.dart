import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:zoom_clone_flutter/utils/utils.dart';

// Class to handle authentication methods
class AuthMethods {
  // Initialize instances of FirebaseAuth and FirebaseFirestore
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Get a stream of authentication state changes
  Stream<User?> get authChanges => _auth.authStateChanges();

  // Get the current user
  User get user => _auth.currentUser!;

  // Method to sign in using Google
  Future<bool> signInWithGoogle(BuildContext context) async {
    // Initialize result variable
    bool res = false;
    try {
      // Prompt user to sign in with Google
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Get authentication details from the signed-in Google user
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a GoogleAuthProvider credential using the obtained details
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Sign in with the Google credential
      UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      // Get the signed-in user
      User? user = userCredential.user;

      // Check if the user is new; if so, add user data to Firestore
      if (user != null) {
        if (userCredential.additionalUserInfo!.isNewUser) {
          await _firestore.collection('users').doc(user.uid).set({
            'username': user.displayName,
            'uid': user.uid,
            'profilePhoto': user.photoURL,
          });
        }
        // Set result to true if successful
        res = true;
      }
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
      res = false;
    }
    return res;
  }

  // Method to sign out the current user
  void signOut() async {
    try {
      _auth.signOut();
    } catch (e) {
      print(e);
    }
  }
}
