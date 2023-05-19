import 'package:drips_water/core/app_color.dart';
import 'package:drips_water/core/app_dimens.dart';
import 'package:drips_water/core/app_string.dart';
import 'package:drips_water/screens/dashboard/view/tab/tab_cart.dart';
import 'package:drips_water/screens/dashboard/view/tab/tab_home.dart';
import 'package:drips_water/screens/dashboard/view/tab/tab_account.dart';
import 'package:flutter/material.dart';

import 'view/tab/tab_favourite_products.dart';

class ScreenDashboard extends StatefulWidget {
  const ScreenDashboard({Key? key}) : super(key: key);

  @override
  State<ScreenDashboard> createState() => _ScreenDashboardState();
}

class _ScreenDashboardState extends State<ScreenDashboard> {
  late var _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.colorPrimary,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          TabHome(),
          TabCart(),
          TabFavouriteProducts(),
          TabAccount(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.colorWhite,
        selectedItemColor: AppColors.colorBlack,
        unselectedItemColor: AppColors.colorBlack.withOpacity(.20),
        selectedFontSize: Dimens.margin14,
        unselectedFontSize: Dimens.margin14,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        elevation: Dimens.margin5,
        items: const [
          BottomNavigationBarItem(
            label: AppString.textHome,
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: AppString.textCart,
            icon: Icon(Icons.shopping_bag_outlined),
          ),
          BottomNavigationBarItem(
            label: AppString.textFavourite,
            icon: Icon(Icons.favorite_outline),
          ),
          BottomNavigationBarItem(
            label: AppString.textAccount,
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
