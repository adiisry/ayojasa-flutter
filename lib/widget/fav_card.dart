import 'package:flutter/material.dart';
import 'package:ayojasa/theme.dart';

class favCard extends StatelessWidget {
  const favCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: biruPrimary,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/banner/test_product.png',
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jasa kebersihan rumah, kantor, Dll',
                  style: poppinsPutih.copyWith(
                    fontWeight: semibold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Rp. 150.000',
                  style: poppinsPink,
                )
              ],
            ),
          ),
          Image.asset(
            'assets/icon/fav_button_putih.png',
            width: 24,
          )
        ],
      ),
    );
  }
}
