import 'dart:ffi';

import 'package:ayojasa/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:ayojasa/theme.dart';

class CustomAppBar extends StatefulWidget {
  // final TrackingScrollController scrollController;

  // const CustomAppBar(this.scrollController);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  late Color _backgroundColor;
  late Color _backgroundColorSearch;
  late Color _colorIcon;
  late double _opacity;
  late double _offset;

  final _opacityMax = 0.01;

  @override
  void initState() {
    _backgroundColor = Colors.transparent;
    _backgroundColorSearch = Colors.white;
    _colorIcon = biruPrimary;
    _opacity = 0.0;
    _offset = 0.0;

    // widget.scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Widget searchInput() {
    //   final sizeIcon = BoxConstraints(
    //     minWidth: 24,
    //     minHeight: 24,
    //   );

    // final border = OutlineInputBorder(
    //     borderSide: const BorderSide(
    //       color: Colors.grey,
    //       width: 0,
    //     ),
    //     borderRadius: const BorderRadius.all(
    //       const Radius.circular(8),
    //     ));

    // return Expanded(
    //   child: TextField(
    //     decoration: InputDecoration(
    //       contentPadding: EdgeInsets.all(8),
    //       isDense: true,
    //       enabledBorder: border,
    //       focusedBorder: border,
    //       hintText: 'Cari Jasa',
    //       hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
    //       prefixIconConstraints: sizeIcon,
    //       prefixIcon: Icon(Icons.search),
    //       filled: true,
    //       fillColor: _backgroundColorSearch,
    //     ),
    //   ),
    // );
    // Container(
    //   margin: EdgeInsets.only(right: 4, left: 4, bottom: 5),
    //   child: IconButton(
    //     icon: Icon(
    //       Icons.notifications_none,
    //       color: biruPrimary,
    //     ),
    //     onPressed: () {},
    //   ),
    // ),
    // Container(
    //     margin: EdgeInsets.only(right: 4),
    //     child: IconButton(
    //       icon: Icon(
    //         Icons.menu,
    //         color: biruPrimary,
    //       ),
    //       onPressed: () {},
    //     )),
    // ],
    // ),
    // ),
    // Divider()
    // ],

    Widget _buildiconbutton({
      VoidCallback? onPressed,
      IconData? icon,
      int notification = 0,
    }) =>
        Stack(
          children: [
            IconButton(
              onPressed: onPressed,
              icon: Icon(icon),
              color: _colorIcon,
              iconSize: 24,
            ),
            notification == 0
                ? SizedBox()
                : Positioned(
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: pinkPrimary,
                        border: Border.all(color: putihPrimary),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 22,
                        minHeight: 22,
                      ),
                      child: Text(
                        '$notification',
                        style: TextStyle(
                          color: putihPrimary,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
          ],
        );

    // Widget notifButton() {
    //   return Container(
    //     margin: EdgeInsets.only(right: 4, left: 4, bottom: 5),
    //     child: IconButton(
    //       icon: Icon(
    //         Icons.notifications_none,
    //         color: biruPrimary,
    //       ),
    //       onPressed: () {},
    //     ),
    //   );
    // }

    Widget menuButton() {
      return Container(
        // margin: EdgeInsets.only(right: 4),
        child: IconButton(
          icon: Icon(
            Icons.menu,
            color: biruPrimary,
          ),
          onPressed: () {},
        ),
      );
    }

    return Container(
      color: _backgroundColor,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              // searchInput(),
              _buildiconbutton(
                  onPressed: () => print('click!'),
                  icon: Icons.notifications,
                  notification: 22),
              // _buildiconbutton(onPressed: () => print('click!'), icon: Icons.menu)
              menuButton(),
            ],
          ),
        ),
      ),
    );

    //   void _onScroll() {
    //     final scrollOffset = widget.scrollController.offset;
    //     if (scrollOffset >= _offset && scrollOffset > 5) {
    //       _opacity = double.parse((_opacity + _opacityMax).toStringAsFixed(2));
    //       if (_opacity >= 1.0) {
    //         _opacity = 1.0;
    //       }
    //     } else if (scrollOffset < 100) {
    //       _opacity = double.parse((_opacity + _opacityMax).toStringAsFixed(2));
    //       if (_opacity >= 1.0) {
    //         _opacity = 0.0;
    //       }
    //     }

    //     setState(() {
    //       if (scrollOffset <= 0) {
    //         _backgroundColorSearch = putihPrimary;
    //         _colorIcon = biruPrimary;
    //         _offset = 0.0;
    //         _opacity = 0.0;
    //       } else {
    //         _backgroundColorSearch = Colors.grey;
    //         _colorIcon = putihPrimary;
    //       }
    //       _backgroundColor = putihPrimary.withOpacity(_opacity);
    //     });
    //   }
    // }

    // void _onScroll() {
    //   final scrollOffset = widget.scrollController.offset;
    //   if (scrollOffset >= _offset && scrollOffset > 5) {
    //     _opacity = double.parse((_opacity + _opacityMax).toStringAsFixed(2));
    //     if (_opacity >= 1.0) {
    //       _opacity = 1.0;
    //     }
    //   } else if (scrollOffset < 100) {
    //     _opacity = double.parse((_opacity - _opacityMax).toStringAsFixed(2));
    //     if (_opacity <= 1.0) {
    //       _opacity = 0.0;
    //     }
    //   }

    //   setState(() {
    //     if (scrollOffset <= 0) {
    //       _backgroundColorSearch = putihPrimary;
    //       _colorIcon = biruPrimary;
    //       _offset = 0.0;
    //       _opacity = 0.0;
    //     } else {
    //       _backgroundColorSearch = putihPrimary;
    //       _colorIcon = biruPrimary;
    //     }
    //     _backgroundColor = putihPrimary.withOpacity(_opacity);
    //   });
    // }
  }
}
