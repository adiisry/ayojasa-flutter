import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:ayojasa/theme.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class termsUser extends StatefulWidget {
  termsUser({Key? key}) : super(key: key);

  @override
  State<termsUser> createState() => _termsUserState();
}

class _termsUserState extends State<termsUser> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('User Terms & Condition'),
          backgroundColor: biruPrimary,
        ),
        body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://ayojasa-terms.web.app/',
        ),
      );
}
