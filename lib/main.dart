import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfoliowebsite/screen/Contacts.dart';
import 'package:portfoliowebsite/screen/download.dart';
import 'package:portfoliowebsite/screen/home_page.dart';
import 'package:portfoliowebsite/screen/skills.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
       GetPage(name: '/HomeDetail', page: () => Download(pageIndex:1)),
        GetPage(name: '/Skills', page: () => Skills(pageIndex:2)),
        GetPage(name: '/Contact', page: () => Contacts(pageIndex:3)),
        
      ],
    );
  }
}
