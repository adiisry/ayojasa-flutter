import 'package:ayojasa/pages/user/home/user_cart.dart';
import 'package:ayojasa/pages/user/home/user_chat.dart';
import 'package:ayojasa/pages/user/home/user_fav.dart';
import 'package:ayojasa/pages/user/home/user_home.dart';
import 'package:ayojasa/pages/user/home/user_profile.dart';
import 'package:ayojasa/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        backgroundColor: biruPrimary,
        onPressed: () {},
        child: Image.asset(
          'assets/cart.png',
          width: 24,
        ),
      );
    }

    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              print(value);
              setState(() {
                currentIndex = value;
              });
            },
            selectedFontSize: 12,
            unselectedFontSize: 12,
            fixedColor: biruPrimary,
            backgroundColor: greyBG,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/home.png',
                  width: 24,
                  color: currentIndex == 0 ? biruPrimary : greyPrimary,
                ),
                label: 'Beranda',
                // backgroundColor: currentIndex == 0 ? biruPrimary : greyPrimary,
              ),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/chat.png',
                    width: 24,
                    color: currentIndex == 1 ? biruPrimary : greyPrimary,
                  ),
                  label: 'Pesan'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/search_grey.png',
                    width: 5,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/like.png',
                    width: 24,
                    color: currentIndex == 3 ? biruPrimary : greyPrimary,
                  ),
                  label: 'Favorit'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/profil.png',
                    width: 24,
                    color: currentIndex == 4 ? biruPrimary : greyPrimary,
                  ),
                  label: 'Profil'),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return userHome();
          break;
        case 1:
          return userChat();
          break;
        case 2:
          return userCart();
          break;
        case 3:
          return userFav();
          break;
        case 4:
          return userProfile();
          break;
        default:
          return userHome();
      }
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: greyBG,
        floatingActionButton: cartButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: customButtonNav(),
        body: body());
  }
}
