import 'package:flutter/material.dart';
import 'package:teman_tani/shared/theme.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teman_tani/ui/widget/search_bar_custom.dart';

import '../widget/card_custom.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  int currentCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorfulSafeArea(
        color: brownColor,
        child: ListView(
          children: [

            // Profile Section
            Container(
              width: double.infinity,
              color: brownColor,

              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [

                    // Back Arrow & Search Bar
                    Row(
                      children: [

                        // Back Icon
                        GestureDetector(
                          onTap: (){

                          },

                          child: Icon(
                            Icons.arrow_back_sharp,
                            color: whiteColor,
                            size: 24,
                          ),
                        ),

                        const SizedBox(width: 18),

                        // Search Bar
                        const ProfileSearchBar(formHint: 'Cari di Profil', obscureText: false)
                      ],
                    ),

                    const SizedBox(height: 28),

                    Row(
                      children: [

                        // Profile Picture
                        Icon(
                          Icons.account_circle_outlined,
                          color: whiteColor,
                          size: 80,
                        ),

                        const SizedBox(width: 16),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // User Name
                            Text(
                              'Henzi Juandri',
                              style: GoogleFonts.montserrat(
                                  color: whiteColor,
                                  fontSize: 20,
                                  fontWeight: semiBold
                              ),
                            ),

                            //User Email
                            Text(
                              'henzijuandri@icloud.com',
                              style: GoogleFonts.montserrat(
                                  color: whiteColor,
                                  fontSize: 12,
                                  fontWeight: medium
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Product Section
            Row(
              children: [

                // Tanaman
                GestureDetector(
                  onTap: (){
                    setState(() {
                      currentCategory = 0;
                    });
                  },

                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      children: [
                        Text(
                          'Tanaman',
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: semiBold,
                            color: currentCategory == 0 ? blackColor : redColor
                          ),
                        ),

                        const SizedBox(height: 12),

                        Container(
                          width: double.infinity,
                          height: 1,
                            color: currentCategory == 0 ? blackColor : redColor
                        )
                      ],
                    ),
                  ),
                ),

                // Alat Tani
                GestureDetector(
                  onTap: (){
                    setState(() {
                      currentCategory = 1;
                    });
                  },

                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      children: [
                        Text(
                          'Alat Tani',
                          style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: semiBold,
                              color: currentCategory == 1 ? blackColor : redColor
                          ),
                        ),

                        const SizedBox(height: 12),

                        Container(
                          width: double.infinity,
                          height: 1,
                            color: currentCategory == 1 ? blackColor : redColor
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),

            Padding(
              padding: EdgeInsets.all(20),
              child: Wrap(
                spacing: 17,
                runSpacing: 17,

                children: [

                  ProductCardCustom(
                      productImage: 'assets/gandum.png',
                      productName: 'Gandum Segar',
                      productPrice: '10.000',
                      onTap: (){}
                  ),

                  ProductCardCustom(
                      productImage: 'assets/gandum.png',
                      productName: 'Gandum Segar',
                      productPrice: '10.000',
                      onTap: (){}
                  ),

                  ProductCardCustom(
                      productImage: 'assets/gandum.png',
                      productName: 'Gandum Segar',
                      productPrice: '10.000',
                      onTap: (){}
                  ),

                  ProductCardCustom(
                      productImage: 'assets/gandum.png',
                      productName: 'Gandum Segar',
                      productPrice: '10.000',
                      onTap: (){}
                  ),

                  ProductCardCustom(
                      productImage: 'assets/gandum.png',
                      productName: 'Gandum Segar',
                      productPrice: '10.000',
                      onTap: (){}
                  ),

                  ProductCardCustom(
                      productImage: 'assets/gandum.png',
                      productName: 'Gandum Segar',
                      productPrice: '10.000',
                      onTap: (){}
                  ),

                ],
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
