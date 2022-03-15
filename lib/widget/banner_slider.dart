import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ayojasa/theme.dart';

class bannerSlider extends StatefulWidget {
  @override
  State<bannerSlider> createState() => _bannerSliderState();
}

class _bannerSliderState extends State<bannerSlider> {
  final List<String> _imgList = [
    'assets/banner/1.png',
    'assets/banner/2.png',
    'assets/banner/3.png',
    'assets/banner/test_1.png',
  ];

  late int _current;

  @override
  void initState() {
    _current = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBanner(),
        _buildIndicator(),
      ],
    );
  }

  Container _buildBanner() {
    return Container(
      width: double.infinity,
      child: CarouselSlider(
        options: CarouselOptions(
            enlargeCenterPage: true,
            aspectRatio: 2.837,
            viewportFraction: 1.0,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
        items: _imgList
            .map(
              (item) => Image.asset(
                item,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            )
            .toList(),
      ),
    );
  }

  _buildIndicator() => Positioned(
        bottom: 15,
        left: 15,
        child: Row(
            children: _imgList.map(
          (url) {
            int index = _imgList.indexOf(url);
            return Container(
              width: 8,
              height: _current == index ? 8 : 1,
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                border: Border.all(color: putihPrimary),
                shape: _current == index ? BoxShape.circle : BoxShape.rectangle,
                color: biruPrimary,
              ),
            );
          },
        ).toList()),
      );
}
