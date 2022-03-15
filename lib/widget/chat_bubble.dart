import 'package:flutter/material.dart';
import 'package:ayojasa/theme.dart';

class ChatBubble extends StatelessWidget {
  late final String text;
  late final bool isSender;
  late final bool hasProduct;

  ChatBubble({
    this.isSender = false,
    this.text = '',
    this.hasProduct = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
          width: 230,
          margin: EdgeInsets.only(bottom: 12),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(isSender ? 12 : 0),
              topRight: Radius.circular(isSender ? 0 : 12),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            color: isSender ? biruPrimary : greyThird,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/banner/test_product.png',
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jasa Kebersihan Rumah, Kantor, Dll',
                        style: isSender ? poppinsPutih : poppinsHitam,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Rp. 150.000',
                        style: isSender
                            ? poppinsPink.copyWith(fontWeight: medium)
                            : poppinsBiru.copyWith(fontWeight: medium),
                      )
                    ],
                  ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: isSender ? putihPrimary : biruPrimary,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: Text(
                      '+ Keranjang',
                      style: isSender ? poppinsPutih : poppinsBiru,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: isSender ? putihPrimary : biruPrimary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text('Beli',
                        style: isSender
                            ? poppinsBiru.copyWith(
                                fontWeight: medium,
                              )
                            : poppinsPutih.copyWith(fontWeight: medium)),
                  ),
                ],
              )
            ],
          ));
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productPreview() : SizedBox(),
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(isSender ? 12 : 0),
                      topRight: Radius.circular(isSender ? 0 : 12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color: isSender ? biruPrimary : greyThird,
                  ),
                  child: Text(
                    text,
                    style: isSender ? poppinsPutih : poppinsHitam,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
