import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:misto/global/extensions.dart';
import 'package:misto/screens/premium_screen.dart';
import 'dart:math' as math;
import '../constants/colors.dart';
import '../constants/icons.dart';
import '../constants/strings.dart';
import 'common_widgets.dart';
import 'custom_buttons.dart';
import 'custom_images.dart';

premiumDialog(BuildContext context) {
  int selected = 1;
  showDialog(
    context: context,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: InkWell(
            onTap: () => Get.back(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Container(
                      width: context.width,
                      height: context.height * 0.55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFF9A00),
                                    Color(0xffF1B205),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Headline(
                                      'Get ${AppStrings.appname} Gold'),
                                  20.vertical,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        radius: 35,
                                        backgroundColor: Colors.white,
                                        backgroundImage:
                                            providerImage(AppIcons.profile),
                                      ),
                                      const CircleAvatar(
                                        radius: 35,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.refresh_outlined,
                                          color: Color(0xffFF9A00),
                                          size: 45,
                                        ),
                                      ),
                                    ],
                                  ),
                                  20.vertical,
                                  const Headline(
                                    'Unlimited Likes & Swipes',
                                    fontsize: 16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            selected = 0;
                                          });
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          decoration: selected == 0
                                              ? BoxDecoration(
                                                  border: Border.all(
                                                    color: AppColors.primary,
                                                    width: 3,
                                                  ),
                                                )
                                              : null,
                                          child: Column(
                                            children: [
                                              Headline(
                                                '1',
                                                color: selected == 0
                                                    ? AppColors.primary
                                                    : AppColors.accentDark,
                                                fontsize: 25,
                                              ),
                                              5.vertical,
                                              BodyText(
                                                'months',
                                                color: selected == 0
                                                    ? AppColors.primary
                                                    : AppColors.accentDark,
                                                fontsize: 18,
                                              ),
                                              5.vertical,
                                              const BodyText(
                                                '\$29.99/mo',
                                                color: AppColors.accent,
                                                fontsize: 14,
                                              ),
                                              5.vertical,
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            selected = 1;
                                          });
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          decoration: selected == 1
                                              ? BoxDecoration(
                                                  border: Border.all(
                                                    color: AppColors.primary,
                                                    width: 3,
                                                  ),
                                                )
                                              : null,
                                          child: Column(
                                            children: [
                                              Headline(
                                                '6',
                                                color: selected == 1
                                                    ? const Color.fromRGBO(
                                                        54, 124, 72, 1)
                                                    : AppColors.accentDark,
                                                fontsize: 25,
                                              ),
                                              5.vertical,
                                              BodyText(
                                                'months',
                                                color: selected == 1
                                                    ? AppColors.primary
                                                    : AppColors.accentDark,
                                                fontsize: 18,
                                              ),
                                              5.vertical,
                                              const BodyText(
                                                '\$179.99/mo',
                                                color: AppColors.accent,
                                                fontsize: 14,
                                              ),
                                              5.vertical,
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            selected = 2;
                                          });
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          decoration: selected == 2
                                              ? BoxDecoration(
                                                  border: Border.all(
                                                    color: AppColors.primary,
                                                    width: 3,
                                                  ),
                                                )
                                              : null,
                                          child: Column(
                                            children: [
                                              Headline(
                                                '12',
                                                color: selected == 2
                                                    ? AppColors.primary
                                                    : AppColors.accentDark,
                                                fontsize: 25,
                                              ),
                                              5.vertical,
                                              BodyText(
                                                'months',
                                                color: selected == 2
                                                    ? AppColors.primary
                                                    : AppColors.accentDark,
                                                fontsize: 18,
                                              ),
                                              5.vertical,
                                              const BodyText(
                                                '\$359.99/mo',
                                                color: AppColors.accent,
                                                fontsize: 14,
                                              ),
                                              5.vertical,
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                50.vertical,
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: CustomElevatedButton(
                                    radius: 30,
                                    text: 'Continue'.toUpperCase(),
                                    onPressed: () =>
                                        Get.to(() => const GetPremiumScreen()),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const BodyText(
                    'Recurring billing, cancel anytime.',
                    weight: FontWeight.bold,
                    fontsize: 13,
                    color: Colors.white,
                    align: TextAlign.center,
                  ),
                  5.vertical,
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          'By tapping Continue, your payment will be charged to your Google play account, and your subscription will be automatically renew for the same package length at the same price until you cancel in settings in the Google play store. By tapping Continue, you agree to our ',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                      children: [
                        TextSpan(
                          text: 'Terms',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.white,
                                    fontSize: 13,
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}

confirmationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: const Column(
        children: [
          Icon(Icons.shield_outlined, color: Colors.blue),
          SizedBox(height: 7),
          Headline(
            'Thanks for reaching out about your experience.',
            align: TextAlign.center,
          ),
        ],
      ),
      actions: [
        Center(
          child: CustomTextButton(
            title: 'Done',
            onpressed: () => Navigator.of(context).pop(),
          ),
        ),
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text:
                  'We appreciate you trusting us with this info. Your safety is important to us and each report helps us maintain a safe space for all our members.Should you need support.please visit our ',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 17,
                  ),
              children: [
                TextSpan(
                  text: 'Safety Center',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        fontSize: 17,
                      ),
                ),
                const TextSpan(text: ' for helpful resources'),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

matchedDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.7),
        body: InkWell(
          onTap: () => Get.back(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: context.height * 0.3,
                      width: context.width,
                    ),
                    Positioned(
                      right: 0,
                      child: Transform.rotate(
                        angle: -15 * math.pi / 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: assetImage(AppIcons.profile,
                              width: context.width * 0.4),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child: Transform.rotate(
                        angle: 15 * math.pi / 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: assetImage(AppIcons.pic2,
                              width: context.width * 0.4),
                        ),
                      ),
                    ),
                    const Center(
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.favorite, color: Colors.red),
                      ),
                    ),
                  ],
                ),
                (context.height * 0.1).toInt().vertical,
                Headline(
                  'You\'ve matched, Jake\n It\'s Misto Time',
                  color: AppColors.primary,
                  fontsize: 30,
                  align: TextAlign.center,
                  font: GoogleFonts.fredoka().fontFamily,
                ),
                (context.height * 0.1).toInt().vertical,
                CustomElevatedButton(
                  text: 'Message Jack',
                  btnWidth: context.width * 0.77,
                ),
                20.vertical,
                CustomElevatedButton(
                  text: 'Keep Swiping',
                  btnWidth: context.width * 0.77,
                  primary: AppColors.primary.withOpacity(0.2),
                  textColor: Colors.black,
                ),
                50.vertical,
              ],
            ),
          ),
        ),
      );
    },
  );
}

optionDialog(
  BuildContext context,
  String title,
  String subtitle,
  String action,
  VoidCallback onAction,
) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        title: BodyText(
          title,
          color: AppColors.primary,
          align: TextAlign.center,
          fontsize: 16,
          weight: FontWeight.w600,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BodyText(subtitle, align: TextAlign.center).marginOnly(bottom: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => Get.back(),
                  child: Container(
                    width: 100,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.primary),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const BodyText(
                      'Cancel',
                      color: Colors.black,
                      align: TextAlign.center,
                    ),
                  ),
                ),
                InkWell(
                  onTap: onAction,
                  child: Container(
                    width: 120,
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: BodyText(
                      action,
                      color: Colors.white,
                      align: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
