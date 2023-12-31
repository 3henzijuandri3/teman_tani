import 'package:flutter/material.dart';
import 'package:teman_tani/shared/theme.dart';
import 'package:teman_tani/ui/page/all_product_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teman_tani/ui/page/home.dart';
import 'package:teman_tani/ui/page/product_detail_page.dart';
import 'package:teman_tani/ui/page/profile_page.dart';
import 'package:teman_tani/ui/page/upload_product_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teman Tani',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: lightBackgroundColor,

          appBarTheme: AppBarTheme(
            elevation: 0,
            centerTitle: true,
            backgroundColor: lightBackgroundColor,
            iconTheme: IconThemeData(
              color: blackColor,
            ),

            titleTextStyle: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold
            ),
          ),
      ),

      home: UploadProductPage(),
    );
  }
}

