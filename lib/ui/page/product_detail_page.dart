import 'package:flutter/material.dart';
import 'package:teman_tani/shared/lorem_text.dart';
import 'package:teman_tani/shared/theme.dart';
import 'package:teman_tani/ui/widget/button_custom.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_sharp,
          size: 28,
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),

        children: [

          // Product Name Start
          Text(
            'Gandum Segar',
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: bold
            ),
          ),
          // Product Name End

          // User Profile Start
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            
            children: [
              Icon(
                Icons.person_2_outlined,
                color: greenColor,
                size: 24,
              ),

              const SizedBox(width: 6),

              Text(
                'Henzi Juandri',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium
                ),
              ),
            ],
          ),
          // User Profile End

          const SizedBox(height: 16),

          // Product Image Start
          Container(
            width: double.infinity,
            height: 240,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),

              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/gandum.png')
              ),

              boxShadow: const [
                const BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0
                )
              ]
            ),


          ),
          // Product Image End

          const SizedBox(height: 20),

          // Product Description Start
          Text(
            'Description',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold
            ),
          ),

          const SizedBox(height: 4),

          Text(
            loremText,
            textAlign: TextAlign.justify,
            style: greyTextStyle.copyWith(
              fontSize: 14,
              fontWeight: regular
            ),
          ),
          // Product Description End

          const SizedBox(height: 30),

          // Product Price & Pesan Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              // Price
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Rp 31.000',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold
                    ),
                  ),

                  const SizedBox(width: 4),

                  Text(
                    '/Kg',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular
                    ),
                  ),
                ],
              ),

              // Pesan Button
              FilledButtonCustom(
                  width: 170,
                  height: 40,
                  label: 'Pesan',
                  roundSize: 8,
                  onTap: (){

                  }
              ),

            ],
          )
          // Product Price & Pesan Button
        ],
      ),
    );
  }
}
