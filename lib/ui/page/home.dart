import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:teman_tani/shared/theme.dart';
import 'package:teman_tani/ui/widget/button_custom.dart';
import 'package:teman_tani/ui/widget/card_custom.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(22),
          children: [

            // Profile Welcome Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                // User Name
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selamat datang',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: regular
                      ),
                    ),

                    Text(
                      'Henzi Juandri',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold
                      ),
                    ),
                  ],
                ),

                // User Profile
                Icon(
                  Icons.account_circle_outlined,
                  color: brownColor,
                  size: 50,
                ),

              ],
            ),

            const SizedBox(height: 30),

            // Plant Recommendation Banner
            Container(
              width: double.infinity,
              height: 130,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/recommendation.png'),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Plant Detection Menu
            Text(
              'Periksa penyakit tanamanmu!',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold
              ),
            ),

            const SizedBox(height: 12),

            DetectionMenu(),

            const SizedBox(height: 20),

            // Plant Detection Banner
            Container(
              width: double.infinity,
              height: 130,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/detection.png'),
                ),
              ),
            ),

            const SizedBox(height: 40),

            // Alat Tani Product
            ProductAlatTani(),

            const SizedBox(height: 14),

            ProductTanaman(),
          ],
        ),
      ),
    );
  }

  Widget DetectionMenu(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          PlantButtonCustom(
              width: 65,
              height: 65,
              label: 'Padi',
              plantImage: 'assets/padi.png',
              onTap: (){}
          ),

          const SizedBox(width : 20),

          PlantButtonCustom(
              width: 65,
              height: 65,
              label: 'Singkong',
              plantImage: 'assets/ubi.png',
              onTap: (){}
          ),

          const SizedBox(width : 20),

          PlantButtonCustom(
              width: 65,
              height: 65,
              label: 'Cabai',
              plantImage: 'assets/cabai.png',
              onTap: (){}
          ),

          const SizedBox(width : 20),

          PlantButtonCustom(
              width: 65,
              height: 65,
              label: 'Tomat',
              plantImage: 'assets/tomat.png',
              onTap: (){}
          ),

          const SizedBox(width : 20),

          PlantButtonCustom(
              width: 65,
              height: 65,
              label: 'Jagung',
              plantImage: 'assets/jagung.png',
              onTap: (){}
          ),

          const SizedBox(width : 20),

          PlantButtonCustom(
              width: 65,
              height: 65,
              label: 'Kentang',
              plantImage: 'assets/kentang.png',
              onTap: (){}
          ),
        ],
      ),
    );
  }

  Widget ProductAlatTani(){
    return Column(
      children: [
        // Text & Button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Alat Tani',
              style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold
              ),
            ),

            ViewMoreButtonCustom(
                width: 120,
                height: 30,
                label: 'Lihat Semua',
                onTap: (){}
            ),
          ],
        ),

        // List Product
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 18),
            child: Row(
              children: [
                ProductCardCustom(
                    productImage: 'assets/gandum.png',
                    productName: 'Gandum Segar',
                    productPrice: '10.000',
                    onTap: (){}
                ),

                const SizedBox(width: 12),

                ProductCardCustom(
                    productImage: 'assets/gandum.png',
                    productName: 'Gandum Segar',
                    productPrice: '10.000',
                    onTap: (){}
                ),

                const SizedBox(width: 12),

                ProductCardCustom(
                    productImage: 'assets/gandum.png',
                    productName: 'Gandum Segar',
                    productPrice: '10.000',
                    onTap: (){}
                ),

                const SizedBox(width: 12),

                ProductCardCustom(
                    productImage: 'assets/gandum.png',
                    productName: 'Gandum Segar',
                    productPrice: '10.000',
                    onTap: (){}
                ),

                const SizedBox(width: 12),

                ProductCardCustom(
                    productImage: 'assets/gandum.png',
                    productName: 'Gandum Segar',
                    productPrice: '10.000',
                    onTap: (){}
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget ProductTanaman(){
    return Column(
      children: [
        // Text & Button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tanaman',
              style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold
              ),
            ),

            ViewMoreButtonCustom(
                width: 120,
                height: 30,
                label: 'Lihat Semua',
                onTap: (){}
            ),
          ],
        ),

        // List Product
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 18),
            child: Row(
              children: [
                ProductCardCustom(
                    productImage: 'assets/gandum.png',
                    productName: 'Gandum Segar',
                    productPrice: '10.000',
                    onTap: (){}
                ),

                const SizedBox(width: 12),

                ProductCardCustom(
                    productImage: 'assets/gandum.png',
                    productName: 'Gandum Segar',
                    productPrice: '10.000',
                    onTap: (){}
                ),

                const SizedBox(width: 12),

                ProductCardCustom(
                    productImage: 'assets/gandum.png',
                    productName: 'Gandum Segar',
                    productPrice: '10.000',
                    onTap: (){}
                ),

                const SizedBox(width: 12),

                ProductCardCustom(
                    productImage: 'assets/gandum.png',
                    productName: 'Gandum Segar',
                    productPrice: '10.000',
                    onTap: (){}
                ),

                const SizedBox(width: 12),

                ProductCardCustom(
                    productImage: 'assets/gandum.png',
                    productName: 'Gandum Segar',
                    productPrice: '10.000',
                    onTap: (){}
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
