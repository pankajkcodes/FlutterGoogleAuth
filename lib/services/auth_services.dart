import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices {
  User? user;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> loginUsingGoogle(BuildContext context) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);

      // Getting users credential
      await _auth.signInWithCredential(authCredential).then((value) {
        user = value.user;
        log(user!.uid.toString());
      });
    }
  }

  Future<void> logOut() async {
    await _auth.signOut();
  }
}
