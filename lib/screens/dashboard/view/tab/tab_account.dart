import 'package:drips_water/core/app_string.dart';
import 'package:flutter/material.dart';

class TabAccount extends StatefulWidget {
  const TabAccount({Key? key}) : super(key: key);

  @override
  State<TabAccount> createState() => _TabAccountState();
}

class _TabAccountState extends State<TabAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(AppString.textAccount),
    );
  }
}
