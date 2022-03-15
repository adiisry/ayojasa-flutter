import 'package:flutter/material.dart';
import 'package:ayojasa/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.pushNamed(context, '/detail-jasa');
      }),
      child: Container(
        height: 300,
        width: 180,
        margin: EdgeInsets.only(
          bottom: 16,
        ),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: putihPrimary,
          boxShadow: [
            BoxShadow(
                color: biruPrimary.withOpacity(0.2),
                blurRadius: 10,
                offset: Offset(0, 3))
          ],
        ),
        child: Column(
          children: [
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('assets/banner/test_product.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 50,
                  height: 20,
                  decoration: BoxDecoration(
                    color: putihPrimary,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon/star-fix.png'),
                          ),
                        ),
                      ),
                      Text(
                        '4.8',
                        style: poppinsHitam.copyWith(
                          fontWeight: medium,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 6),
                    height: 15,
                    child: Text(
                      'Project',
                      style: poppinsBiru.copyWith(
                        fontSize: 10,
                        fontWeight: medium,
                      ),
                      textAlign: TextAlign.justify,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    height: 38,
                    child: Text(
                      'Jasa kebersihan rumah, kantor, kebun, kendaraan',
                      style: poppinsHitam.copyWith(
                        fontSize: 12,
                        fontWeight: semibold,
                      ),
                      textAlign: TextAlign.justify,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    height: 20,
                    child: Text(
                      'Rp. 150.000',
                      style: poppinsBiru.copyWith(
                          fontSize: 14, fontWeight: semibold),
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    height: 20,
                    child: Text(
                      'JAKARTA SELATAN',
                      style: poppinsGrey2.copyWith(
                          fontSize: 12, fontWeight: semibold),
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
