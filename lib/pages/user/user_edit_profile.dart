import 'package:ayojasa/theme.dart';
import 'package:flutter/material.dart';

class userEditProfile extends StatelessWidget {
  const userEditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    header() => AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
            ),
          ),
          backgroundColor: biruPrimary,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Edit Profil',
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.check),
            ),
          ],
        );

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama',
              style: poppinsGrey.copyWith(
                fontSize: 14,
              ),
            ),
            TextFormField(
              style: poppinsBiru,
              decoration: InputDecoration(
                  hintText: 'Nama Saya',
                  hintStyle: poppinsBiru,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: biruPrimary,
                  ))),
            )
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: poppinsGrey.copyWith(
                fontSize: 14,
              ),
            ),
            TextFormField(
              style: poppinsBiru,
              decoration: InputDecoration(
                  hintText: '@usersaya',
                  hintStyle: poppinsBiru,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: biruPrimary,
                  ))),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: poppinsGrey.copyWith(
                fontSize: 14,
              ),
            ),
            TextFormField(
              style: poppinsBiru,
              decoration: InputDecoration(
                  hintText: 'emailsaya@email.com',
                  hintStyle: poppinsBiru,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: biruPrimary,
                  ))),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(top: defaultMargin),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/icon/user_profile.png'))),
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: greyBG,
      appBar: header(),
      body: content(),
    );
  }
}
