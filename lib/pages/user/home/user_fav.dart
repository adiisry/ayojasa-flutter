import 'package:ayojasa/theme.dart';
import 'package:ayojasa/widget/fav_card.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class userFav extends StatelessWidget {
  const userFav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        toolbarHeight: 60,
        backgroundColor: biruPrimary,
        centerTitle: true,
        title: Text(
          'Jasa Favorit',
          style: poppinsPutih.copyWith(fontSize: 18, fontWeight: semibold),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyFav() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: greyBG,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/lottie/empty.json',
                width: 150,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Opss, belum ada yang favorit nih',
                style: poppinsBiru.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 44,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 24,
                      ),
                      backgroundColor: biruPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Cari Jasa',
                      style: poppinsPutih.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    )),
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: greyBG,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              favCard(),
              favCard(),
              favCard(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptyFav(),
        content(),
      ],
    );
  }
}
