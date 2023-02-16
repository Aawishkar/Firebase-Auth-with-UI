// ignore_for_file: prefer_const_constructors

import 'package:elearning/screens/auth/auth_page.dart';
import 'package:elearning/screens/pages/home_page.dart';
import 'package:elearning/screens/pages/login_page.dart';
import 'package:elearning/screens/pages/verify_email_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return VerifyEmailPage();
          } else {
            return AuthPage();
          }
        },
      ),
    );
  }
}
