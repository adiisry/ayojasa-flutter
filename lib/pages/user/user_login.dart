import 'dart:ui';

import 'package:ayojasa/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class userLogin extends StatefulWidget {
  @override
  State<userLogin> createState() => _userLoginState();
}

class _userLoginState extends State<userLogin> {
  bool _obscuretext = true;

  // const userLogin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        toolbarHeight: 100,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
            },
            icon: Image(
              image: AssetImage('assets/back_putih.png'),
              height: 24,
              width: 24,
            )),
        backgroundColor: biruPrimary,
        centerTitle: true,
        title: Text(
          'Login',
          style: poppinsPutih.copyWith(
            fontSize: 20,
            fontWeight: bold,
          ),
        ),
        elevation: 0,
        // automaticallyImplyLeading: false,
      );
    }

    Widget email() {
      return Container(
        margin: EdgeInsets.only(top: 75),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'E-mail',
              style: poppinsPutih.copyWith(
                fontSize: 14,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: putihPrimary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/mail.png',
                        width: 17,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: TextFormField(
                          style: poppinsBiru,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Email Address Kamu',
                            hintStyle: poppinsGrey2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      );
    }

    Widget password() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: poppinsPutih.copyWith(
                fontSize: 14,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: putihPrimary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/password.png',
                        width: 22,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: TextFormField(
                          obscureText: _obscuretext,
                          style: poppinsBiru,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 12),
                              isCollapsed: true,
                              // border: const UnderlineInputBorder(),
                              hintText: 'Password Kamu',
                              hintStyle: poppinsGrey2,
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscuretext = !_obscuretext;
                                  });
                                },
                                child: Icon(_obscuretext
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              )),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      );
    }

    Widget signInButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 40),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/user-home');
          },
          style: TextButton.styleFrom(
            backgroundColor: pinkPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Masuk',
            style: poppinsPutih.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    Widget signUpButton() {
      return Container(
          margin: EdgeInsets.only(
            top: 20,
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Belum punya akun? ',
              style: poppinsPutih.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
            GestureDetector(
              onTap: (() {
                Navigator.pushNamed(context, '/user-signup');
              }),
              child: Text(
                'Buat baru',
                style: poppinsPink.copyWith(fontSize: 14, fontWeight: regular),
              ),
            )
          ]));
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: biruPrimary,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          // decoration: BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage('assets/bg_sign_in.png'),
          //         fit: BoxFit.cover)),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              email(),
              password(),
              signInButton(),
              signUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}
