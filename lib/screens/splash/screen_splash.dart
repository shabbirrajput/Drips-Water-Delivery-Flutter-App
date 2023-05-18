import 'package:drips_water/core/app_color.dart';
import 'package:drips_water/core/app_dimens.dart';
import 'package:drips_water/core/app_image.dart';
import 'package:drips_water/screens/onboarding/screen_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const ScreenOnBoarding()),
          (Route<dynamic> route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1],
          colors: [
            AppColors.colorPrimary,
          ],
        ),
      ),
      child: Center(
        child: SvgPicture.asset(
          AppImage.appLogo,
          height: Dimens.margin200,
          width: Dimens.margin200,
        ),
      ),
    );
  }
}
