import 'package:ayojasa/theme.dart';
import 'package:ayojasa/widget/banner_slider.dart';
import 'package:ayojasa/widget/best_jasa_card.dart';
import 'package:ayojasa/widget/custom_app_bar.dart';
import 'package:ayojasa/widget/product_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class userHome extends StatefulWidget {
  const userHome({Key? key}) : super(key: key);

  @override
  State<userHome> createState() => _userHomeState();
}

class _userHomeState extends State<userHome> {
  final _scrollController = TrackingScrollController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    // Widget appBar() {
    //   return Container(
    //     child: Column(
    //       children: [CustomAppBar(_scrollController)],
    //     ),
    //   );
    // }

    // Widget appBar() {
    //   return Stack(children: [
    //     AppBar(
    //       elevation: 0,
    //       automaticallyImplyLeading: false,
    //       toolbarHeight: 60,
    //       title: Text('Test AppBar'),
    //     ),
    //   ]);
    // }

    Widget banner() {
      return Column(
        children: [
          bannerSlider(),
          SizedBox(
            height: 0,
          )
        ],
      );
    }

    Widget category() {
      return Container(
        // alignment: Alignment.center,
        height: 200,
        width: screenSize.width,
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/category_bg.png'),
          ),
          // boxShadow: [
          //   BoxShadow(
          //       color: biruPrimary.withOpacity(0.5),
          //       blurRadius: 10,
          //       offset: Offset(5, 2))
          // ],
        ),
        child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: screenSize.width,
                padding: EdgeInsets.only(top: 20),
                // alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/icon/otomotif.png',
                            width: 34,
                            height: 34,
                          ),
                        ),
                        Text(
                          'Otomotif',
                          style: poppinsPutih.copyWith(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/icon/elektronik.png',
                            width: 34,
                            height: 34,
                          ),
                        ),
                        Text(
                          'Elektronik',
                          style: poppinsPutih.copyWith(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/icon/pendidikan.png',
                            width: 34,
                            height: 34,
                          ),
                        ),
                        Text(
                          'Pendidikan',
                          style: poppinsPutih.copyWith(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/icon/kesehatan.png',
                            width: 34,
                            height: 34,
                          ),
                        ),
                        Text(
                          'Kesehatan',
                          style: poppinsPutih.copyWith(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    // SizedBox(
                    //   width: 40,
                    // ),
                  ],
                ),
              ),
              // SizedBox(height: 2),
              Container(
                height: 100,
                width: screenSize.width,
                padding: EdgeInsets.only(bottom: 20),
                // alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/icon/hiburan.png',
                            width: 34,
                            height: 34,
                          ),
                        ),
                        Text(
                          'Hiburan',
                          style: poppinsPutih.copyWith(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/icon/property.png',
                            width: 34,
                            height: 34,
                          ),
                        ),
                        Text(
                          'Property',
                          style: poppinsPutih.copyWith(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/icon/pekerjaan.png',
                            width: 34,
                            height: 34,
                          ),
                        ),
                        Text(
                          'Pekerjaan',
                          style: poppinsPutih.copyWith(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    // SizedBox(
                    //   width: 40,
                    // ),
                  ],
                ),
              ),
            ]),
      );
    }

    Widget textTopJasa() {
      return Container(
        height: 30,
        child: Row(children: [
          Container(
            // color: pinkPrimary,
            padding: EdgeInsets.only(left: 10),
            height: 30,
            width: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Paling Berjasa',
                  style: poppinsBiru.copyWith(fontSize: 16, fontWeight: bold),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 2,
          ),
          Container(
            width: 70,
            height: 30,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon/top_jasa.png'),
                    fit: BoxFit.fitWidth)),
          )
        ]),
      );
    }

    Widget topBerjasa() {
      return Container(
        // padding: EdgeInsets.only(left: 16, top: 10, right: 16),
        margin: EdgeInsets.only(left: 16, top: 8, right: 16),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  bestJasaCard(),
                  SizedBox(width: 12),
                  bestJasaCard(),
                  SizedBox(width: 12),
                  bestJasaCard(),
                  SizedBox(width: 12),
                  bestJasaCard(),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget textRekomen() {
      return Container(
        height: 30,
        child: Row(children: [
          Expanded(
            child: Container(
              // color: pinkPrimary,
              padding: EdgeInsets.only(left: 10),
              height: 30,
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Direkomendasikan',
                    style: poppinsBiru.copyWith(fontSize: 16, fontWeight: bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            // color: biruPrimary,
            padding: EdgeInsets.only(right: 10),
            height: 30,
            width: 145,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Selengkapnya',
                  style:
                      poppinsGrey.copyWith(fontSize: 14, fontWeight: regular),
                ),
              ],
            ),
          ),
        ]),
      );
    }

    Widget rekomenProducts() {
      return Container(
        margin: EdgeInsets.only(top: 8),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductCard(),
                  SizedBox(width: 12),
                  ProductCard(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductCard(),
                  SizedBox(width: 12),
                  ProductCard(),
                ],
              ),
            ],
          ),
        ),
      );
    }

    // return ListView(
    //   children: [
    //     appBar(),
    //     banner(),
    //     category(),
    //     textTopJasa(),
    //     topBerjasa(),
    //     textRekomen(),
    //     rekomenProducts(),
    //   ],
    // );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
        centerTitle: false,
        backgroundColor: greyBG,
        title: Container(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    // vertical: 12,
                  ),
                  decoration: BoxDecoration(
                      color: putihPrimary,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: greyPrimary,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 20,
                          color: greyThird,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: TextFormField(
                            style: poppinsBiru.copyWith(fontSize: 12),
                            decoration: InputDecoration.collapsed(
                              hintText: 'Lagi butuh apa nih?',
                              hintStyle: poppinsGrey3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            child: CustomAppBar(),
          ),
        ],
      ),
      body: ListView(
        children: [
          banner(),
          category(),
          textTopJasa(),
          topBerjasa(),
          textRekomen(),
          rekomenProducts(),
        ],
      ),
    );
  }
}
