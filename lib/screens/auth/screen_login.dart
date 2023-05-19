import 'package:drips_water/core/app_color.dart';
import 'package:drips_water/core/app_dimens.dart';
import 'package:drips_water/core/app_string.dart';
import 'package:drips_water/screens/auth/screen_registeration.dart';
import 'package:drips_water/screens/dashboard/screen_dashboard.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.colorPrimary,
              size: Dimens.margin30,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.margin30),
          child: Column(
            children: [
              const SizedBox(
                height: Dimens.margin30,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppString.textWelcomeBack,
                  style: TextStyle(
                    color: AppColors.colorPrimary,
                    fontFamily: GoogleFonts.poppins().toString(),
                    fontSize: Dimens.textSize20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: Dimens.margin12,
              ),
              Text(
                AppString.textPleaseFillInYourEmailPasswordToLoginToYourAccount,
                style: TextStyle(
                    color: AppColors.colorGrey,
                    fontFamily: GoogleFonts.poppins().toString(),
                    fontSize: Dimens.textSize15,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: Dimens.margin39,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppString.textEmail,
                  style: TextStyle(
                      color: AppColors.colorGrey,
                      fontFamily: GoogleFonts.poppins().toString(),
                      fontSize: Dimens.textSize15,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: Dimens.margin7,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: AppString.textEnterEmail,
                  /*fillColor: Colors.white70*/
                ),
              ),
              const SizedBox(
                height: Dimens.margin19,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppString.textPassword,
                  style: TextStyle(
                      color: AppColors.colorGrey,
                      fontFamily: GoogleFonts.poppins().toString(),
                      fontSize: Dimens.textSize15,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: Dimens.margin7,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: AppString.textEnterPassword,
                  /*fillColor: Colors.white70*/
                ),
              ),
              const SizedBox(
                height: Dimens.margin23,
              ),
              InkWell(
                onTap: () {},
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    AppString.textForgotPassword,
                    style: TextStyle(
                        color: AppColors.colorGrey,
                        fontFamily: GoogleFonts.poppins().toString(),
                        fontSize: Dimens.textSize12,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: Dimens.margin105,
              ),
              SizedBox(
                height: Dimens.margin60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScreenDashboard()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero)),
                      backgroundColor: AppColors.colorPrimary),
                  child: Text(
                    AppString.textLogin,
                    style: TextStyle(
                        color: AppColors.colorWhite,
                        fontFamily: GoogleFonts.poppins().toString(),
                        fontSize: Dimens.textSize15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const SizedBox(
                height: Dimens.margin17,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: AppString.textDontHaveAnAccount,
                      style: TextStyle(
                        fontSize: Dimens.textSize14,
                        decoration: TextDecoration.underline,
                        color: AppColors.colorGrey,
                        fontFamily: GoogleFonts.poppins().toString(),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ScreenRegisteration(),
                            ),
                          );
                        },
                      text: AppString.textSignUp,
                      style: TextStyle(
                        color: AppColors.colorPrimary,
                        fontFamily: GoogleFonts.poppins().toString(),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                style: TextStyle(
                  color: AppColors.colorGrey,
                  fontFamily: GoogleFonts.poppins().toString(),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
