import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/theme.dart';

class AllProductSearchBar extends StatelessWidget {
  final String formHint;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? inputType;

  const AllProductSearchBar({
    super.key,
    required this.formHint,
    required this.obscureText,
    this.controller,
    this.inputType
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: obscureText,
      controller: controller,

      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.all(14),
        hintText: formHint,

        suffixIcon: Icon(
          Icons.search_outlined,
          color: greyColor,
          size: 24,
        ),

        hintStyle: GoogleFonts.nunitoSans(
          color: brownColor,
          fontSize: 16,
          fontWeight: regular
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: greenColor), // Border color when focused
        ),
      ),
    );
  }
}

class ProfileSearchBar extends StatelessWidget {
  final String formHint;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? inputType;

  const ProfileSearchBar({
    super.key,
    required this.formHint,
    required this.obscureText,
    this.controller,
    this.inputType
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 40,

      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.1), // Shadow color
            spreadRadius: 1, // Spread radius
            blurRadius: 3, // Blur radius
            offset: Offset(0, 2), // Offset in the y direction
          ),
        ],
        borderRadius: BorderRadius.circular(5),
      ),

      child: TextFormField(
        textAlign: TextAlign.start,
        keyboardType: inputType,
        obscureText: obscureText,
        controller: controller,

        decoration: InputDecoration(
          filled: true,
          fillColor: transparent.withOpacity(0.22),
          contentPadding: EdgeInsets.symmetric(vertical: 0),
          hintText: formHint,

          prefixIcon: Icon(
            Icons.search_outlined,
            color: whiteColor,
            size: 24,
          ),

          hintStyle: GoogleFonts.nunitoSans(
              color: whiteColor,
              fontSize: 16,
              fontWeight: regular
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none,
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: whiteColor), // Border color when focused
          ),
        ),
      ),
    );
  }
}