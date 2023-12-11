import 'package:flutter/material.dart';
import 'package:teman_tani/ui/widget/widget_logo_custom.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../shared/theme.dart';

class InputCustom extends StatelessWidget {
  final String formHint;
  final IconData formLogo;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? inputType;

  const InputCustom({
    super.key,
    required this.formHint,
    required this.formLogo,
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
        contentPadding: EdgeInsets.all(18),
        hintText: formHint,

        prefixIcon: LogoCustom(iconLogo: formLogo),

        hintStyle: greyTextStyle.copyWith(
            fontSize: 14,
            fontWeight: light
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: greenColor), // Border color when focused
        ),
      ),
    );
  }
}

class BorderInputCustom extends StatelessWidget {
  final String formHint;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? inputType;

  const BorderInputCustom({
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
        contentPadding: EdgeInsets.all(18),
        hintText: formHint,

        hintStyle: greyTextStyle.copyWith(
            fontSize: 14,
            fontWeight: light
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: greenColor
          )
        ),

        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
                color: blueColor
            )
        ),
      ),
    );
  }
}

class BigBorderInputCustom extends StatelessWidget {
  final String formHint;
  final TextEditingController? controller;
  final TextInputType? inputType;

  const BigBorderInputCustom({
    super.key,
    required this.formHint,
    this.controller,
    this.inputType
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 6,
      textAlign: TextAlign.start,
      keyboardType: inputType,
      controller: controller,

      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: formHint,
        hintStyle: GoogleFonts.nunitoSans(
          color: greyColor,
          fontSize: 16,
          fontWeight: light,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: greenColor,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: blueColor,
          ),
        ),
      ),
    );
  }
}

