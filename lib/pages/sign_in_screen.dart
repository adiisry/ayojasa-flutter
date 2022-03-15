import 'package:ayojasa/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Halo, Siapakah Anda?',
              style: poppinsPutih.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      );
    }

    Widget userText() {
      return Container(
        margin: EdgeInsets.only(top: 250),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Sedang mencari jasa untuk membantumu?',
              style: poppinsBiru.copyWith(
                fontSize: 14,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      );
    }

    Widget userButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 16, left: 50, right: 50),
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/user-onboarding');
            },
            style: TextButton.styleFrom(
              backgroundColor: biruPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'Pengguna Jasa',
              style: poppinsPutih.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            )),
      );
    }

    Widget vendorText() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Ingin berjasa bagi yang membutuhkan?',
              style: poppinsPink.copyWith(
                fontSize: 14,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      );
    }

    Widget vendorButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 16, left: 50, right: 50),
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/vendor-onboarding');
            },
            style: TextButton.styleFrom(
              backgroundColor: pinkPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'Penyedia Jasa',
              style: poppinsPutih.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            )),
      );
    }

    return Scaffold(
      backgroundColor: biruPrimary,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bg_sign_in.png'),
                  fit: BoxFit.cover)),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              userText(),
              userButton(),
              vendorText(),
              vendorButton(),
            ],
          ),
        ),
      ),
    );
  }
}
