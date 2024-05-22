import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:portfoliowebsite/constants/colors.dart';
import 'package:portfoliowebsite/constants/icons.dart';
import 'package:portfoliowebsite/global/extensions.dart';
import 'package:portfoliowebsite/widgets/common_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_images.dart';
class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      body: Stack(
      children: [
        Positioned(
          //top: 0,
          bottom: 200,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BodyText(
                "HELLO MY NAME IS",
                color: AppColors.background,
                fontsize: MediaQuery.of(context).size.width*0.015,
                font: GoogleFonts.montserrat().fontFamily,
              ),
              // SizedBox(
              //   height: 30,
              //   child: Divider(
              //     thickness: 30,
              //     color: Colors.pink,
              //   ),
              // ),
              BodyText(
                "Muhammad Anus Gul",
                color: AppColors.background,
                weight: FontWeight.bold,
                fontsize: MediaQuery.of(context).size.width*0.030,
                font: GoogleFonts.montserrat().fontFamily,
              ),
              BodyText(
                "Hello, I'm Muhammad Anus Gul, a passionate mobile application developer with 2 years of\nexperience specializing in Flutter, Dart, and Firebase technologies. I thrive on creating innovative\nsolutions that enhance user experiences and drive business growth.\nBeyond coding, I'm also a skilled writer and a dedicated human rights activist. I believe in using\ntechnology not only to build great products but also to make a positive impact on society.\nMy commitment to social justice fuels my drive to create meaningful and inclusive digital\nexperiences.\nLet's collaborate and bring your ideas to life while making a difference in the world.",
                color: AppColors.background,
                fontsize: MediaQuery.of(context).size.width*0.010,
                font: GoogleFonts.montserrat().fontFamily,
              ),

            ],
          ),
        ),
      // Positioned(
      //   left: 0,
      //   right: 0,
      //   top: 40,
      //   child:  Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       NavText(
      //         text: "Home",
      //         isSelected: pageIndex == 0,
      //         onPressed: () {
      //           Get.toNamed('/');
      //         },
      //       ),
      //       const SizedBox(width: 10),
      //       NavText(
      //         text: "Download",
      //         isSelected: pageIndex == 1,
      //         onPressed: () {
      //           Get.toNamed('/Download');
      //         },
      //       ),
      //       const SizedBox(width: 10),
      //       NavText(
      //         text: "Skills",
      //         isSelected: pageIndex == 2,
      //         onPressed: () {
      //           Get.toNamed('/Skills');
      //         },
      //       ),
      //       const SizedBox(width: 10),
      //       NavText(
      //         text: "Contacts",
      //         isSelected: pageIndex == 3,
      //         onPressed: () {
      //           Get.toNamed('/Contacts');
      //         },
      //       ),
      //     ],
      //   ),
      // ),
        //20.vertical,

      Positioned(
        right: 10,
        bottom: 10,
        child: CustomImageWidget(
          image: AppIcons.Profile, // Provide the path to your image
          fit: BoxFit.cover, // Specify the BoxFit property if needed
          // Specify the width of the image widget
          //color: Colors.red, // Specify the color of the image widget if needed
        ),
      ),


      ],
      ),
    );
  }
}
