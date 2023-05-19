import 'package:carousel_slider/carousel_slider.dart';
import 'package:drips_water/core/app_color.dart';
import 'package:drips_water/core/app_dimens.dart';
import 'package:drips_water/core/app_image.dart';
import 'package:drips_water/core/app_string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabHome extends StatefulWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  State<TabHome> createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Dimens.margin125,
            width: double.infinity,
            color: AppColors.colorPrimary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: Dimens.margin21),
                  child: Text(
                    AppString.textWelcomeBack,
                    style: TextStyle(
                      fontSize: Dimens.textSize12,
                      color: AppColors.colorWhite,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.poppins().toString(),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: Dimens.margin21),
                  child: Text(
                    AppString.textMrProduct,
                    style: TextStyle(
                      fontSize: Dimens.textSize20,
                      color: AppColors.colorWhite,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.poppins().toString(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: Dimens.margin13,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: Dimens.margin16),
                  child: TextFormField(
                    style: const TextStyle(color: AppColors.colorBlack),
                    decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.search,
                          color: AppColors.colorWhite,
                        ),
                        filled: true,
                        fillColor: AppColors.colorBlack.withOpacity(.10),
                        border: InputBorder.none,
                        hintText: AppString.textSearchSomething,
                        hintStyle: TextStyle(
                            color: AppColors.colorWhite,
                            fontSize: Dimens.textSize12,
                            fontFamily: GoogleFonts.rubik().toString(),
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                const SizedBox(
                  height: Dimens.margin18,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  height: 200,
                  color: Colors.transparent,
                  width: double.infinity,
                  child: CarouselSlider(
                    options: CarouselOptions(height: 400.0),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: Image.asset(AppImage.appSlider));
                        },
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
