import 'package:drips_water/core/app_color.dart';
import 'package:drips_water/core/app_dimens.dart';
import 'package:drips_water/core/app_fonts.dart';
import 'package:drips_water/core/app_image.dart';
import 'package:drips_water/core/app_string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenWelcome extends StatefulWidget {
  const ScreenWelcome({Key? key}) : super(key: key);

  @override
  State<ScreenWelcome> createState() => _ScreenWelcomeState();
}

class _ScreenWelcomeState extends State<ScreenWelcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImage.appWelcomeBgPNG),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: Dimens.margin473,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: Dimens.margin46),
                  child: Center(
                    child: Text(
                      AppString.textWelcomeToDripsWater,
                      style: TextStyle(
                          color: AppColors.colorWhite,
                          fontFamily: AppFont.bold.toString(),
                          fontWeight: FontWeight.w800,
                          fontSize: Dimens.textSize24),
                    ),
                  ),
                ),
                const SizedBox(
                  height: Dimens.margin7,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: Dimens.margin46),
                  child: Center(
                    child: Text(
                      AppString.textWaterDeliveryApp,
                      style: TextStyle(
                          color: AppColors.colorWhite,
                          fontFamily: AppFont.bold.toString(),
                          fontWeight: FontWeight.w400,
                          fontSize: Dimens.textSize16),
                    ),
                  ),
                ),
                const SizedBox(
                  height: Dimens.margin28,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 29.0),
                  child: SizedBox(
                    height: Dimens.margin60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.zero)),
                          backgroundColor: AppColors.colorWhite),
                      child: Text(
                        AppString.textCreateAnAccount,
                        style: TextStyle(
                            color: AppColors.colorGreyLight,
                            fontFamily: GoogleFonts.poppins().toString(),
                            fontSize: Dimens.textSize14,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: Dimens.margin18,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: Dimens.margin29),
                  child: SizedBox(
                    height: Dimens.margin60,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.zero)),
                          side: const BorderSide(
                              width: Dimens.margin1,
                              color: AppColors.colorWhite),
                          backgroundColor: Colors.transparent),
                      child: Text(
                        AppString.textLogin,
                        style: TextStyle(
                            color: AppColors.colorWhite,
                            fontFamily: GoogleFonts.poppins().toString(),
                            fontSize: Dimens.textSize14,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: Dimens.margin18,
                ),
                InkWell(
                    onTap: () {},
                    child: Text(
                      AppString.textContinueAsGuest,
                      style: TextStyle(
                          color: AppColors.colorWhite,
                          fontFamily: AppFont.colorWhite.toString(),
                          fontSize: Dimens.textSize16,
                          fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
