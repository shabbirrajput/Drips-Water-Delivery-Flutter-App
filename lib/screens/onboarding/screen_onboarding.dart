import 'package:drips_water/core/app_color.dart';
import 'package:drips_water/core/app_dimens.dart';
import 'package:drips_water/core/app_image.dart';
import 'package:drips_water/core/app_string.dart';
import 'package:drips_water/screens/welcome/screen_welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenOnBoarding extends StatefulWidget {
  const ScreenOnBoarding({Key? key}) : super(key: key);

  @override
  State<ScreenOnBoarding> createState() => _ScreenOnBoardingState();
}

class _ScreenOnBoardingState extends State<ScreenOnBoarding> {
  late PageController _pageController;

  int _pageIndex = 0;

  int? tappedIndex;

  List<String> litems = [
    "Onboarding 1",
    "Onboarding 2",
    "Onboarding 3",
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
    tappedIndex = 0;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    itemCount: onBoardData.length,
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _pageIndex = index;
                      });
                    },
                    itemBuilder: (context, index) => OnBoardContent(
                      image: onBoardData[index].image,
                      title: onBoardData[index].title,
                      description: onBoardData[index].description,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                        onBoardData.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child:
                                  DotIndicator(isActive: index == _pageIndex),
                            )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /*const Spacer(),*/
                    SizedBox(
                      height: 60,
                      width: 318,
                      child: ElevatedButton(
                          onPressed: () {
                            /// (condition) ? true:false
                            _pageIndex == 2
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ScreenWelcome()),
                                  )
                                : _pageController.nextPage(
                                    curve: Curves.ease,
                                    duration:
                                        const Duration(microseconds: 300));
                          },
                          /*style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: Colors.deepPurpleAccent),*/
                          child: Text(_pageIndex <= 1
                              ? AppString.textNext
                              : AppString.textGetStarted)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.all(20.0),
      duration: const Duration(microseconds: 300),
      height: isActive ? 20 : 10,
      width: 4,
      decoration: BoxDecoration(
          color: isActive
              ? AppColors.colorPrimary
              : AppColors.colorPrimary.withOpacity(0.4),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard(
      {required this.image, required this.title, required this.description});
}

final List<Onboard> onBoardData = [
  Onboard(
    image: AppImage.appOnBoarding1,
    title: AppString.textWeProvideBestQualityWater,
    description: AppString.textDescriptionLoremIpsum,
  ),
  Onboard(
    image: AppImage.appOnBoarding2,
    title: AppString.textScheduleWhenYouWantYourWaterDelivered,
    description: AppString.textDescriptionLoremIpsum,
  ),
  Onboard(
    image: AppImage.appOnBoarding3,
    title: AppString.textFastAndResponsibilyDelivery,
    description: AppString.textDescriptionLoremIpsum,
  ),
];

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        SvgPicture.asset(
          image,
          height: Dimens.margin250,
        ),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: Dimens.margin16,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
