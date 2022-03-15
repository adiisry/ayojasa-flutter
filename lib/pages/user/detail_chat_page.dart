import 'package:ayojasa/widget/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:ayojasa/theme.dart';

class UserDetailChat extends StatelessWidget {
  const UserDetailChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    myAppBar() => PreferredSize(
          child: AppBar(
            backgroundColor: biruPrimary,
            centerTitle: false,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image(
                  image: AssetImage('assets/back_putih.png'),
                  height: 24,
                  width: 24,
                )),
            title: Row(
              children: [
                Image.asset(
                  'assets/icon/profile.png',
                  width: 40,
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Indra Kenz',
                      style: poppinsPutih.copyWith(
                        fontWeight: medium,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Online',
                      style: poppinsGrey.copyWith(
                        fontWeight: light,
                        fontSize: 12,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          preferredSize: Size.fromHeight(60),
        );

    Widget productPreview() {
      return Container(
        width: 225,
        height: 74,
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: biruDongker,
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/banner/test_product.png',
              width: 54,
              height: 54,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  child: Text(
                    'Jasa Kebersihan Rumah, Kantor, Dll',
                    style: poppinsPutih,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  width: 120,
                  child: Text(
                    'Rp. 150.000',
                    style: poppinsBiru.copyWith(fontWeight: medium),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/icon/cancel.png',
            width: 22,
          )
        ]),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productPreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      // vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: greyThird,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Ketik Pesan...',
                          hintStyle: poppinsGrey4,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/icon/send_button.png',
                  width: 45,
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          ChatBubble(
            isSender: true,
            text: 'Hai, apakah bisa saya order hari ini pak?',
            hasProduct: true,
          ),
          ChatBubble(
            isSender: false,
            text:
                'Belum bisa mas, kemungkinan besok, hari ini saya sudah full dan close order',
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: greyBG,
      appBar: myAppBar(),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
