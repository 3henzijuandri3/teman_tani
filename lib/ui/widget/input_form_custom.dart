import 'package:flutter/material.dart';
import 'package:teman_tani/ui/widget/widget_logo_custom.dart';

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
