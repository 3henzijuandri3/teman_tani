import 'package:flutter/material.dart';
import 'package:teman_tani/shared/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teman_tani/ui/widget/card_custom.dart';
import 'package:teman_tani/ui/widget/search_bar_custom.dart';

class AllProductPage extends StatelessWidget {
  const AllProductPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(

        child: ListView(
          children: [

            // Section Search Bar
            Stack(
              clipBehavior: Clip.none,
              children: [

                // Brown Background
                Container(
                  width: double.infinity,
                  height: 160,
                  color: brownColor,
                ),

                // Profile
                Positioned(
                  left: 20,
                  right: 20,
                  top: 10,
                  bottom: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Teman Tani',
                        style: GoogleFonts.nunitoSans(
                            color: whiteColor,
                            fontSize: 22,
                            fontWeight: black
                        ),
                      ),

                      Icon(
                        Icons.account_circle_outlined,
                        color: whiteColor,
                        size: 30,
                      ),
                    ],
                  ),
                ),

                // Search Bar
                const Positioned(
                  right: 20,
                  left: 20,
                  bottom: -30,
                  child: AllProductSearchBar(
                      formHint: 'Cari Produk',
                      obscureText: false
                  ),
                )
              ],
            ),

            const SizedBox(height: 55),

            // Section Product
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Product Category
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      // Tanaman
                      Container(
                        width: 160,
                        height: 65,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/kategori_tanam.png')
                          ),
                        ),

                        child: Center(
                            child: Text(
                              'Tanaman',
                              style: whiteTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                        ),
                      ),

                      // Alat Tani
                      Container(
                        width: 160,
                        height: 65,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/kategori_alat.png')
                          ),
                        ),

                        child: Center(
                          child: Text(
                            'Alat Tani',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                        ),
                      )

                    ],
                  ),

                  const SizedBox(height: 20),

                  // All Product Text
                  Text(
                    'Semua Produk',
                    style: GoogleFonts.nunitoSans(
                      color: blackColor,
                      fontSize: 18,
                      fontWeight: bold
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Product Item
                  Wrap(
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
                  )
                ],
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      )
    );
  }
}
