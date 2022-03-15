import 'package:flutter/material.dart';
import 'package:ayojasa/theme.dart';

class bestJasaCard extends StatelessWidget {
  const bestJasaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: putihPrimary,
        // boxShadow: [
        //   BoxShadow(
        //       color: biruPrimary.withOpacity(0.2),
        //       blurRadius: 10,
        //       offset: Offset(0, 3))
        // ],
      ),
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                'assets/icon/profile.png',
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 6),
                height: 20,
                child: Text(
                  '@Doni_salmanan',
                  style: poppinsBiru.copyWith(
                    fontSize: 14,
                    fontWeight: semibold,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 6),
                height: 20,
                child: Text(
                  '170x Berjasa',
                  style: poppinsGrey2.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
