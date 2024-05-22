import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/common_widgets.dart';
class Download extends StatelessWidget {
  final int pageIndex;

  Download({Key? key, required this.pageIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ], // Added missing closing bracket here
      ),
    );
  }
}
