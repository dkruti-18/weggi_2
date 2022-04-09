import 'package:flutter/material.dart';

import 'mainPage.dart';

void main() {
  runApp(const MaibPage());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaibPage();
  }
  }