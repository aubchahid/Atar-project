import 'package:atar/views/MainScreens/MainScreen.dart';
import 'package:atar/views/auth/welcomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:page_transition/page_transition.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<bool> emailSignUp(
      _fullname, _phoneNo, _email, _password, context) async {
    bool isSuccess = true;
    try {
      UserCredential authResult = await _auth.createUserWithEmailAndPassword(
          email: _email, password: _password);
      User? _user = authResult.user;
      assert(!_user!.isAnonymous);
      User? currentUser = _auth.currentUser;
      assert(_user!.uid == currentUser!.uid);
      Navigator.pushReplacement(
        context,
        PageTransition(
          child: const SignUpScreen2(),
          type: PageTransitionType.rightToLeft,
        ),
      );
    } on FirebaseAuthException catch (e) {
      isSuccess = false;
      print(e.code);
    }
    return isSuccess;
  }

  Future<String> emailSignIp(_email, _password, context) async {
    String message = 'NO-ERROR';
    try {
      UserCredential authResult = await _auth.signInWithEmailAndPassword(
          email: _email.toString().toLowerCase(), password: _password);
      User? _user = authResult.user;
      assert(!_user!.isAnonymous);
      User? currentUser = _auth.currentUser;
      assert(_user!.uid == currentUser!.uid);
      Navigator.pushReplacement(
        context,
        PageTransition(
          child: const MainSCreen(),
          type: PageTransitionType.rightToLeft,
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        message = "user-not-found";
      } else if (e.code == 'wrong-password') {
        message = "wrong-password";
      }
    }
    return message;
  }

  Future<bool> googleSignIn(context) async {
    bool isSuccess = false;
    try {
      GoogleSignInAccount? _googleAccount = await _googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await _googleAccount!.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken);
      UserCredential authResult = await _auth.signInWithCredential(credential);
      User? _user = authResult.user;
      Navigator.pushReplacement(
        context,
        PageTransition(
          child: const MainSCreen(),
          type: PageTransitionType.rightToLeft,
        ),
      );
      isSuccess = true;
    } on FirebaseAuthException catch (e) {
      isSuccess = false;
      print(e.toString());
    } catch (e) {
      isSuccess = false;
      print(e.toString());
    }
    return isSuccess;
  }

  Future<Future> signOut(context) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          "Confirmation",
          style: TextStyle(
            fontFamily: "MontserratBold",
            fontSize: 14.sp,
            color: Colors.black,
          ),
        ),
        content: Text(
          "Êtes-vous certain de vouloir vous déconnecter?",
          style: TextStyle(
            fontFamily: "MontserratMedium",
            fontSize: 14.sp,
            color: const Color.fromRGBO(48, 49, 52, 1),
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text(
              "Non",
              style: TextStyle(
                fontFamily: "MontserratMedium",
                fontSize: 14.sp,
                color: Theme.of(context).primaryColorDark.withOpacity(0.6),
              ),
            ),
            onPressed: () {
              Navigator.pop(context, false);
            },
          ),
          TextButton(
            child: Text(
              "Oui",
              style: TextStyle(
                fontFamily: "MontserratMedium",
                fontSize: 14.sp,
                color: Colors.black,
              ),
            ),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              _auth.signOut();
              _googleSignIn.signOut();
              await SessionManager().remove("user");
              await SessionManager().remove("isLoggedIn");
              Navigator.pushReplacement(
                context,
                PageTransition(
                  child: const SignInScreen(),
                  type: PageTransitionType.fade,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
