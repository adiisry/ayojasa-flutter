import 'package:ayojasa/theme.dart';
import 'package:ayojasa/widget/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class userChat extends StatelessWidget {
  const userChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        toolbarHeight: 60,
        backgroundColor: biruPrimary,
        centerTitle: true,
        title: Text(
          'Pesan',
          style: poppinsPutih.copyWith(fontSize: 18, fontWeight: semibold),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyChat() {
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
                'Opss, belum ada pesan nih',
                style: poppinsBiru.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: greyBG,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: [
              ChatTile(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptyChat(),
        content()
      ],
    );
  }
}
