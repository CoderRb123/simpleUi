import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uitest/presentation/layout/base_layout.dart';

class Base extends StatelessWidget {
  const Base({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark // status bar color
        ));
    return const BaseLayout();
  }
}
