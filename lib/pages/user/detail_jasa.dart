import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ayojasa/theme.dart';
import 'package:readmore/readmore.dart';

class DetailJasa extends StatefulWidget {
  @override
  State<DetailJasa> createState() => _DetailJasaState();
}

class _DetailJasaState extends State<DetailJasa> {
  List images = [
    'assets/banner/test_product.png',
    'assets/banner/test_product.png',
    'assets/banner/test_product.png',
    'assets/banner/test_product.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 5,
        height: 4,
        margin: EdgeInsets.symmetric(
          horizontal: 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? biruPrimary : greyPrimary,
        ),
      );
    }

    Widget header() {
      int index = -1;

      return Stack(
        children: [
          Column(children: [
            Container(
              width: double.infinity,
              child: CarouselSlider(
                  items: images
                      .map(
                        (item) => Image.asset(
                          item,
                          width: screenSize.width,
                          height: 320,
                          fit: BoxFit.cover,
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                      viewportFraction: 1.0,
                      enlargeCenterPage: true,
                      aspectRatio: 1.400,
                      initialPage: 0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      })),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.map((e) {
                index++;
                return indicator(index);
              }).toList(),
            ),
          ]),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/icon/back_bg.png',
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            selectedFontSize: 5,
            unselectedFontSize: 5,
            fixedColor: biruPrimary,
            backgroundColor: putihPrimary,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  width: 100,
                  height: 30,
                  // color: pinkPrimary,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon/button_pink.png'),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon/lapor.png',
                        width: 16,
                        height: 16,
                      ),
                      TextButton(
                        onPressed: () {},
                        // style: TextButton.styleFrom(
                        //   backgroundColor: pinkPrimary,
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(12),
                        //   ),
                        // ),
                        child: Text(
                          'Laporkan',
                          style: poppinsPutih.copyWith(
                            fontSize: 10,
                            fontWeight: light,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // backgroundColor: currentIndex == 0 ? biruPrimary : greyPrimary,
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  width: 100,
                  height: 30,
                  // color: pinkPrimary,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon/button_kuning.png'),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon/message_tab.png',
                        width: 16,
                        height: 16,
                      ),
                      TextButton(
                        onPressed: () {},
                        // style: TextButton.styleFrom(
                        //   backgroundColor: pinkPrimary,
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(12),
                        //   ),
                        // ),
                        child: Text(
                          'Kirim Pesan',
                          style: poppinsPutih.copyWith(
                            fontSize: 10,
                            fontWeight: light,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // backgroundColor: currentIndex == 0 ? biruPrimary : greyPrimary,
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  width: 100,
                  height: 30,
                  // color: pinkPrimary,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon/button_biru.png'),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon/cart_tab.png',
                        width: 16,
                        height: 16,
                      ),
                      TextButton(
                        onPressed: () {},
                        // style: TextButton.styleFrom(
                        //   backgroundColor: pinkPrimary,
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(12),
                        //   ),
                        // ),
                        child: Text(
                          'Keranjang',
                          style: poppinsPutih.copyWith(
                            fontSize: 10,
                            fontWeight: light,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // backgroundColor: currentIndex == 0 ? biruPrimary : greyPrimary,
              ),
              // BottomNavigationBarItem(
              //     icon: Image.asset(
              //       'assets/chat.png',
              //       width: 24,
              //       color: currentIndex == 1 ? biruPrimary : greyPrimary,
              //     ),
              //     label: 'Pesan'),
              // BottomNavigationBarItem(
              //     icon: Image.asset(
              //       'assets/search_grey.png',
              //       width: 5,
              //     ),
              //     label: ''),
              // BottomNavigationBarItem(
              //     icon: Image.asset(
              //       'assets/like.png',
              //       width: 24,
              //       color: currentIndex == 3 ? biruPrimary : greyPrimary,
              //     ),
              //     label: 'Favorit'),
              // BottomNavigationBarItem(
              //     icon: Image.asset(
              //       'assets/profil.png',
              //       width: 24,
              //       color: currentIndex == 4 ? biruPrimary : greyPrimary,
              //     ),
              //     label: 'Profil'),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(
          top: 10,
        ),
        padding: EdgeInsets.only(top: 5, left: 20, right: 20),
        child: Column(
          children: [
            Flexible(
              child: Container(
                width: double.infinity,
                // height: 50,
                child: Text(
                  'Jasa Interior Design',
                  style: poppinsBiru.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            IntrinsicHeight(
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                          'assets/icon/star-fix.png',
                        ),
                      )),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '4.8',
                      style: poppinsKuning.copyWith(
                        fontSize: 13,
                      ),
                    ),
                    VerticalDivider(
                      color: greyPrimary,
                      indent: 2,
                      endIndent: 2,
                    ),
                    Text(
                      '5',
                      style: poppinsKuning.copyWith(
                          fontSize: 13, decoration: TextDecoration.underline),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Penilaian',
                      style: poppinsGrey.copyWith(
                        fontSize: 13,
                      ),
                    ),
                    VerticalDivider(
                      color: greyPrimary,
                      indent: 2,
                      endIndent: 2,
                    ),
                    Text(
                      '5x',
                      style: poppinsKuning.copyWith(
                          fontSize: 13, decoration: TextDecoration.underline),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Berjasa',
                      style: poppinsGrey.copyWith(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: screenSize.width,
                  // color: biruPrimary,
                  child: Text(
                    'Rp. 150.000',
                    style: poppinsPink.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Divider(
                  color: greyPrimary,
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/icon/profile.png',
                          width: 54,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 260,
                          child: Text(
                            'Indra Kenz',
                            style: poppinsBiru.copyWith(
                              fontSize: 14,
                              fontWeight: regular,
                            ),
                          ),
                        ),
                        Container(
                          width: 260,
                          child: Text(
                            'Saya adalah seorang interior designer yang memadukan style sesuai kebutuhan customer, free konsultasi via chat atau whatsapp',
                            style: poppinsGrey.copyWith(
                              fontSize: 12,
                              fontWeight: regular,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: greyPrimary,
                  height: 7,
                ),
                Container(
                  width: screenSize.width,
                  child: Text(
                    'Deskripsi Jasa',
                    style: poppinsGrey.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                  ),
                ),
                Divider(
                  color: greyPrimary,
                  height: 6,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        'Kategori',
                        style: poppinsGrey.copyWith(
                          fontSize: 13,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Properti > Desain Interior',
                        style: poppinsBiru.copyWith(
                          fontSize: 13,
                          fontWeight: regular,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        'Lokasi',
                        style: poppinsGrey.copyWith(
                          fontSize: 13,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 50,
                    // ),
                    Container(
                      child: Text(
                        'JAKARTA SELATAN',
                        style: poppinsBiru.copyWith(
                          fontSize: 13,
                          fontWeight: regular,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        'Tipe',
                        style: poppinsGrey.copyWith(
                          fontSize: 13,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 50,
                    // ),
                    Container(
                      child: Text(
                        'Based On Project',
                        style: poppinsBiru.copyWith(
                          fontSize: 13,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 3),
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icon/help.png'),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        'Maks. Revisi',
                        style: poppinsGrey.copyWith(
                          fontSize: 13,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 50,
                    // ),
                    Container(
                      child: Text(
                        '3',
                        style: poppinsBiru.copyWith(
                          fontSize: 13,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 3),
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icon/help.png'),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: screenSize.width,
                    child: ReadMoreText(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus nisi, tristique sapien quis arcu laoreet cursus elit ornare. Sed at faucibus non mattis elit lorem volutpat. Magnis sem a id ullamcorper a cras risus diam. Volutpat mi fusce odio quam mus enim. Quam viverra fermentum maecenas leo interdum faucibus risus nulla diam. Ut neque a, pulvinar convallis commodo est eget ut iaculis. Et sollicitudin ac tristique rhoncus eu consequat cursus. Tincidunt erat ut vitae neque adipiscing malesuada. Sed dolor nisi sit nulla aliquet cras quisque viverra. Posuere diam leo vel aliquet nullam mi nunc a tempor. Nisl, sed amet sit velit id risus, sed mattis.Lacus, urna, enim urna, massa iaculis adipiscing pretium. Libero nunc orci elit donec sed dictum et. Donec a pretium congue viverra in non elit eu augue. Sit at imperdiet elit aliquam bibendum habitasse neque, mi mauris. Ornare rhoncus vitae quis egestas. Orci risus tortor est egestas auctor volutpat. Arcu pretium pretium, ipsum neque. Fusce fringilla adipiscing nam rutrum urna. Euismod quam ac amet nec. Turpis dui a amet amet augue sollicitudin metus ',
                      trimLines: 5,
                      textAlign: TextAlign.justify,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: ' Baca Selengkapnya ',
                      trimExpandedText: ' Lebih Sedikit ',
                      lessStyle: poppinsBiru.copyWith(
                        fontWeight: regular,
                        fontSize: 13,
                      ),
                      moreStyle: poppinsBiru.copyWith(
                        fontWeight: regular,
                        fontSize: 13,
                      ),
                      style: poppinsGrey.copyWith(
                        fontWeight: regular,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: putihPrimary,
      bottomNavigationBar: customButtonNav(),
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
