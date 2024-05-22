import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/colors.dart';
import '../widgets/common_widgets.dart';

class Contacts extends StatelessWidget {
  final int pageIndex;
  const Contacts({Key? key, required this.pageIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavText(
                text: "Home",
                isSelected: pageIndex == 0,
                onPressed: () {
                  Get.toNamed('/');
                },
              ),
              const SizedBox(width: 10),
              NavText(
                text: "Download",
                isSelected: pageIndex == 1,
                onPressed: () {
                  Get.toNamed('/Download');
                },
              ),
              const SizedBox(width: 10),
              NavText(
                text: "Skills",
                isSelected: pageIndex == 2,
                onPressed: () {
                  Get.toNamed('/Skills');
                },
              ),
              const SizedBox(width: 10),
              NavText(
                text: "Contacts",
                isSelected: pageIndex == 3,
                onPressed: () {
                  Get.toNamed('/Contacts');
                },
              ),
            ],
          ),
        ],
      )
    );
  }
}
