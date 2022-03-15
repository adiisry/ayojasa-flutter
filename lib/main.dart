import 'package:ayojasa/pages/user/detail_jasa.dart';
import 'package:ayojasa/pages/sign_in_screen.dart';
import 'package:ayojasa/pages/splash_screen.dart';
import 'package:ayojasa/pages/user/detail_chat_page.dart';
import 'package:ayojasa/pages/user/home/main_page.dart';
import 'package:ayojasa/pages/user/home/user_chat.dart';
import 'package:ayojasa/pages/user/onboarding.dart';
import 'package:ayojasa/pages/user/terms_user.dart';
import 'package:ayojasa/pages/user/user_edit_profile.dart';
import 'package:ayojasa/pages/user/user_login.dart';
import 'package:ayojasa/pages/user/user_sign_up.dart';
import 'package:ayojasa/pages/vendor/onboarding_v.dart';
import 'package:ayojasa/pages/vendor/terms_vendor.dart';
import 'package:ayojasa/pages/vendor/vendor_sign_up.dart';
import 'package:ayojasa/pages/vendor/vendor_login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/sign-in': (context) => SignInScreen(),

        //USER PAGE
        '/user-onboarding': (context) => onboardingUser(),
        '/user-login': (context) => userLogin(),
        '/user-signup': (context) => userSignUp(),
        '/user-terms': (context) => termsUser(),
        '/user-home': (context) => MainPage(),
        '/user-detail-chat': (context) => UserDetailChat(),
        '/user-edit-profile': (context) => userEditProfile(),
        '/detail-jasa': (context) => DetailJasa(),

        //VENDOR PAGE
        '/vendor-onboarding': (context) => onboardingVendor(),
        '/vendor-login': (context) => vendorLogin(),
        '/vendor-signup': (context) => vendorSignUp(),
        '/vendor-terms': (context) => termsVendor(),
      },
    );
  }
}
