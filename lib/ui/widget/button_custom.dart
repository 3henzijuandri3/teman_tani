import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class FilledButtonCustom extends StatelessWidget {

  final double width;
  final double height;
  final String label;
  final Function onTap;


  const FilledButtonCustom({
    super.key,
    required this.width,
    required this.height,
    required this.label,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,

      child: TextButton(
        onPressed: () => onTap(),

        style: TextButton.styleFrom(
          backgroundColor: greenColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),

        child: Text(
          label,
          style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: bold
          ),
        ),
      ),
    );
  }
}

class TextButtonCustom extends StatelessWidget {
  final String label;
  final Function onTap;

  const TextButtonCustom({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => onTap(),

        child: Text(
          label,
          style: greenTextStyle.copyWith(
            fontSize: 13,
            fontWeight: bold,
          ),
        ),
    );
  }
}

class PlantButtonCustom extends StatelessWidget {
  final String label;
  final String plantImage;
  final Function onTap;

  const PlantButtonCustom({super.key, required this.label, required this.plantImage, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),

      child: Column(
        children: [
          Container(
            width: 94,
            height: 94,

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(plantImage),
              ),
            ),
          ),

          const SizedBox(height: 4),

          Text(
            label,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
          )
        ],
      ),
    );
  }
}

