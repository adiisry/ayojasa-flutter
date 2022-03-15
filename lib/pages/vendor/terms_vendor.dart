import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:ayojasa/theme.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class termsVendor extends StatefulWidget {
  termsVendor({Key? key}) : super(key: key);

  @override
  State<termsVendor> createState() => _termsVendorState();
}

class _termsVendorState extends State<termsVendor> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Seller Terms & Condition'),
          backgroundColor: biruPrimary,
        ),
        body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://ayojasa-terms.web.app/',
        ),
      );
}
