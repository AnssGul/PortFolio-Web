// ignore_for_file: deprecated_member_use

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';




class SheetBack extends StatelessWidget {
  const SheetBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => Get.back(),
        child: Container(
          width: 70,
          height: 5,
          margin: const EdgeInsets.only(top: 5, bottom: 30),
          decoration: BoxDecoration(
            color: AppColors.accentDark.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}


class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.back(),
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        ),
        child: const Icon(Icons.keyboard_arrow_left),
      ),
    );
  }
}

class Headline extends StatelessWidget {
  const Headline(
    this.text, {
    Key? key,
    this.fontsize,
    this.color,
    this.align,
    this.font,
    this.weight,
    this.maxLines,
    this.overflow,
  }) : super(key: key);
  final String text;
  final double? fontsize;
  final Color? color;
  final TextAlign? align;
  final String? font;
  final FontWeight? weight;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      textAlign: align,
      maxLines: maxLines,
      overflow: overflow,
      style: Theme.of(context).textTheme.displayLarge!.copyWith(
            fontSize: fontsize ?? 22,
            color: color ?? (Colors.black),
            fontFamily: font,
            fontWeight: weight ?? FontWeight.bold,
          ),
    );
  }
}

class BodyText extends StatelessWidget {
  const BodyText(
    this.text, {
    Key? key,
    this.fontsize,
    this.color,
    this.maxLines,
    this.overflow,
    this.align,
    this.weight,
    this.font,
    this.decoration,
    this.height,
    this.style,
  }) : super(key: key);
  final String text;
  final double? fontsize, height;
  final Color? color;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? align;
  final FontWeight? weight;
  final String? font;
  final TextDecoration? decoration;
  final FontStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      textAlign: align,
      maxLines: maxLines,
      overflow: overflow,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: fontsize ?? 14,
            color: color ?? (Colors.black),
            fontWeight: weight ?? FontWeight.normal,
            fontFamily: font,
            decoration: decoration,
            height: height,
            fontStyle: style ?? FontStyle.normal,
          ),
    );
  }
}

class AuthText extends StatelessWidget {
  const AuthText(
      {super.key, required this.title, required this.value, this.ontap});

  final String title, value;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: RichText(
        text: TextSpan(
          text: title.tr,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(),
          children: [
            const TextSpan(text: ' '),
            TextSpan(
              text: value.tr,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
              recognizer: TapGestureRecognizer()..onTap = ontap,
            ),
          ],
        ),
      ),
    );
  }
}
class NavText extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback? onPressed;

  const NavText({
    Key? key,
    required this.text,
    required this.isSelected,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: BodyText(
        text,
        color: isSelected ? Colors.blue : Colors.white,
        fontsize: MediaQuery.of(context).size.width * 0.015,
        font: GoogleFonts.montserrat().fontFamily,
      ),
    );
  }
}