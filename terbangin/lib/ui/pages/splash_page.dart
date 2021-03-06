import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';
import 'package:terbangin/cubit/auth_cubit.dart';
import 'package:terbangin/shared/theme.dart';
// ignore: unused_import
import 'package:terbangin/ui/pages/get_started.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // ignore: prefer_const_constructors
    Timer(Duration(seconds: 5), () {
      User? user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/get-started', (route) => false);
      } else {
        context.read<AuthCubit>().getCurrentUser(user.uid);
        Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(bottom: 50),
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                // ignore: prefer_const_constructors
                image: DecorationImage(
                  // ignore: prefer_const_constructors
                  image: AssetImage(
                    'assets/icon_plane.png',
                  ),
                ),
              ),
            ),
            Text(
              'TERBANGIN',
              style: whiteTextStyle.copyWith(
                fontSize: 32,
                fontWeight: medium,
                letterSpacing: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
