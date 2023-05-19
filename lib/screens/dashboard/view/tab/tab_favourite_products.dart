import 'package:drips_water/core/app_string.dart';
import 'package:flutter/material.dart';

class TabFavouriteProducts extends StatefulWidget {
  const TabFavouriteProducts({Key? key}) : super(key: key);

  @override
  State<TabFavouriteProducts> createState() => _TabFavouriteProductsState();
}

class _TabFavouriteProductsState extends State<TabFavouriteProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(AppString.textFavourite),
    );
  }
}
