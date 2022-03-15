import 'dart:ui';

import 'package:ayojasa/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class vendorSignUp extends StatefulWidget {
  @override
  State<vendorSignUp> createState() => _vendorSignUpState();
}

class _vendorSignUpState extends State<vendorSignUp> {
  // const userSignUp({Key? key}) : super(key: key);
  bool isChecked = false;
  bool _obscuretext = true;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        toolbarHeight: 100,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/user-login');
            },
            icon: Image(
              image: AssetImage('assets/back_putih.png'),
              height: 24,
              width: 24,
            )),
        backgroundColor: biruPrimary,
        centerTitle: true,
        title: Text(
          'Buat Akun Baru',
          style: poppinsPutih.copyWith(
            fontSize: 20,
            fontWeight: bold,
          ),
        ),
        elevation: 0,
        // automaticallyImplyLeading: false,
      );
    }

    Widget nama() {
      return Container(
        margin: EdgeInsets.only(top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama',
              style: poppinsPutih.copyWith(
                fontSize: 14,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5,
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
                        'assets/person.png',
                        width: 17,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: TextFormField(
                          style: poppinsBiru,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Nama Kamu',
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

    Widget username() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: poppinsPutih.copyWith(
                fontSize: 14,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5,
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
                        'assets/username.png',
                        width: 17,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: TextFormField(
                          style: poppinsBiru,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Username Kamu',
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

    Widget email() {
      return Container(
        margin: EdgeInsets.only(top: 20),
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
              height: 5,
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
              height: 5,
            ),
            Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 13),
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
                        width: 15,
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

    Widget checkbox() {
      return Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
                child: Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: isChecked
                            ? Color.fromARGB(255, 255, 86, 120)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(5.0),
                        border: isChecked
                            ? null
                            : Border.all(color: Colors.white, width: 2.0)),
                    width: 20,
                    height: 20,
                    child: isChecked
                        ? Icon(
                            Icons.check,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 16,
                          )
                        : null),
              ),
              Container(
                margin: EdgeInsets.only(left: 5, top: 10),
                child: Row(
                  children: [
                    Text(
                      'Saya setuju dengan ',
                      style: poppinsPutih.copyWith(
                        fontSize: 10,
                      ),
                    ),
                    GestureDetector(
                      onTap: (() {
                        Navigator.pushNamed(context, '/vendor-terms');
                      }),
                      child: Text(
                        'Syarat & Ketentuan',
                        style: poppinsPink.copyWith(
                            fontSize: 10, fontWeight: regular),
                      ),
                    )
                  ],
                ),
              )
            ],
          ));
    }

    Widget signUpButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        child: ElevatedButton(
          onPressed: isChecked ? () {} : null,
          style: ElevatedButton.styleFrom(
            primary: pinkPrimary,
            onSurface: Color.fromARGB(255, 255, 86, 120),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Daftar',
            style: poppinsPutih.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Sudah punya akun? ',
              style: poppinsPutih.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
            GestureDetector(
              onTap: (() {
                Navigator.pushNamed(context, '/user-login');
              }),
              child: Text(
                'Masuk',
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
              nama(),
              username(),
              email(),
              password(),
              checkbox(),
              signUpButton(),
              Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
