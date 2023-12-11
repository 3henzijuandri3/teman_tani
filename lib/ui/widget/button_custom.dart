import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class FilledButtonCustom extends StatelessWidget {

  final double width;
  final double height;
  final String label;
  final Function onTap;
  final double? roundSize;


  const FilledButtonCustom({
    super.key,
    required this.width,
    required this.height,
    required this.label,
    this.roundSize,
    required this.onTap, 
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
            borderRadius: roundSize == null ? BorderRadius.circular(16) : BorderRadius.circular(roundSize!),
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
  final double? width;
  final double? height;

  const PlantButtonCustom({
    super.key,
    this.width,
    this.height,
    required this.label,
    required this.plantImage,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),

      child: Column(
        children: [
          Container(
            width: width == null ? 94 : width,
            height: height == null ? 94 : height,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              image: DecorationImage(
                fit: BoxFit.fill,
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

class ViewMoreButtonCustom extends StatelessWidget {

  final double width;
  final double height;
  final String label;
  final Function onTap;


  const ViewMoreButtonCustom({
    super.key,
    required this.width,
    required this.height,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,

      child: TextButton(
        onPressed: () => onTap(),

        style: TextButton.styleFrom(
          padding: EdgeInsets.all(0),
          backgroundColor: greenColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(11)),
          ),
        ),

        child: Text(
          label,
          style: whiteTextStyle.copyWith(
              fontSize: 12,
              fontWeight: bold
          ),
        ),
      ),
    );
  }
}