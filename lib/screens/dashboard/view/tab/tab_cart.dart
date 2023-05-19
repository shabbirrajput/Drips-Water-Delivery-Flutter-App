import 'package:drips_water/core/app_string.dart';
import 'package:flutter/material.dart';

class TabCart extends StatefulWidget {
  const TabCart({Key? key}) : super(key: key);

  @override
  State<TabCart> createState() => _TabCartState();
}

class _TabCartState extends State<TabCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(AppString.textCart),
    );
  }
}
