import 'package:ayojasa/theme.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class userProfile extends StatelessWidget {
  const userProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var alertStyle = AlertStyle(
      descStyle:
          TextStyle(fontWeight: regular, color: greyPrimary, fontSize: 16),
      titleStyle: TextStyle(color: biruPrimary, fontWeight: semibold),
    );

    Widget header() {
      return AppBar(
        toolbarHeight: 70,
        backgroundColor: biruPrimary,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(defaultMargin),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/icon/user_profile.png',
                    width: 64,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Halo, Adi',
                        style: poppinsPutih.copyWith(
                          fontSize: 24,
                          fontWeight: semibold,
                        ),
                      ),
                      Text(
                        '@adiisrya',
                        style: poppinsGrey.copyWith(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Alert(
                      context: context,
                      style: alertStyle,
                      // type: AlertType.warning,
                      title: "LOGOUT",
                      desc: "Yakin nih mau logout?",
                      image: Lottie.asset("assets/lottie/alert.json",
                          width: 120, height: 120),
                      buttons: [
                        DialogButton(
                          child: Text(
                            "Yakin",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/user-login', (route) => false);
                          },
                          color: biruPrimary,
                        ),
                        DialogButton(
                            child: Text(
                              "Cancel",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            onPressed: () => Navigator.pop(context),
                            color: pinkPrimary),
                      ],
                    ).show();
                  },
                  child: Image.asset(
                    'assets/icon/button_logout.png',
                    width: 34,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: poppinsGrey.copyWith(fontSize: 14),
            ),
            Icon(
              Icons.chevron_right,
              color: greyPrimary,
            )
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: greyBG,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Akun',
                style: poppinsBiru.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/user-edit-profile');
                },
                child: menuItem(
                  'Edit Profil',
                ),
              ),
              menuItem(
                'Transaksi',
              ),
              menuItem(
                'Keamanan Akun',
              ),
              menuItem(
                'Bantuan',
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Umum',
                style: poppinsBiru.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
              menuItem(
                'Kebijakan Privasi',
              ),
              menuItem(
                'Syarat & Ketentuan',
              ),
              menuItem(
                'Kebijakan Layanan',
              ),
              menuItem(
                'Kontak Kami',
              ),
            ],
          ),
        ),
      );
    }

    return Column(children: [
      header(),
      content(),
    ]);
  }
}
