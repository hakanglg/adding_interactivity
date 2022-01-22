import 'package:flutter/material.dart';

import 'view/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[200]),
      home: HomeView(),
    );
  }
}
