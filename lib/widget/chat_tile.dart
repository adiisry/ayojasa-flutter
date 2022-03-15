import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ayojasa/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/user-detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 25,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icon/profile.png',
                  width: 54,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Indra Kenz',
                        style: poppinsBiru.copyWith(fontSize: 15),
                      ),
                      Text(
                        'Halo mas, saya mau bertanya dong, kalau paket',
                        style: poppinsGrey.copyWith(
                          fontWeight: light,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      )
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: poppinsGrey.copyWith(fontSize: 10),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 0.5,
              color: greySecondary,
            )
          ],
        ),
      ),
    );
  }
}
