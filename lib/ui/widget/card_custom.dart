import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class ProductCardCustom extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productPrice;
  final Function onTap;

  const ProductCardCustom({super.key,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: 166,
        height: 185,

        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(2, 4),
                spreadRadius: 0,
              ),
            ]
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                productImage,
                width: double.infinity,
                height: 105,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Nama Produk
                  Text(
                    productName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold
                    ),
                  ),

                  // Harga Produk
                  Text(
                    'Rp $productPrice',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: greyTextStyle.copyWith(
                        fontSize: 13,
                        fontWeight: medium
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      Icons.arrow_circle_right_outlined,
                      color: greenColor,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
