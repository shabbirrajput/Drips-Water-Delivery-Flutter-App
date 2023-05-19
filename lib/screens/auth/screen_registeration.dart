import 'package:drips_water/core/app_color.dart';
import 'package:drips_water/core/app_dimens.dart';
import 'package:drips_water/core/app_string.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenRegisteration extends StatefulWidget {
  const ScreenRegisteration({Key? key}) : super(key: key);

  @override
  State<ScreenRegisteration> createState() => _ScreenRegisterationState();
}

class _ScreenRegisterationState extends State<ScreenRegisteration> {
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
                  AppString.textCreateYourAccount,
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
                AppString.textPleaseFillInYourEmailPasswordToCreateYourAccount,
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
                  AppString.textName,
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
                  hintText: AppString.textEnterName,
                  /*fillColor: Colors.white70*/
                ),
              ),
              const SizedBox(
                height: Dimens.margin17,
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
                height: Dimens.margin17,
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
                height: Dimens.margin17,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppString.textConfirmPassword,
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
                height: Dimens.margin67,
              ),
              SizedBox(
                height: Dimens.margin60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero)),
                      backgroundColor: AppColors.colorPrimary),
                  child: Text(
                    AppString.textCreateAnAccount,
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
                      text: AppString.textAlreadyHaveAnAccount,
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
                      text: AppString.textSignIn,
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
