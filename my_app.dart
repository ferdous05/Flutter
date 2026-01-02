import 'package:flutter/material.dart';
import 'package:project/Practice/NSU.dart';
import 'Practice/MIT.dart';
import 'package:project/mytest.dart';
import 'package:project/Practice/ListView_Build.dart';
import 'package:project/Practice/ListView_separated.dart';
import 'package:project/Practice/Grid_View.dart';

class my_app extends StatelessWidget {
  const my_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Gridview(),
    );
  }
}
