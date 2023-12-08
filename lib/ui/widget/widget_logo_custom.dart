import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class LogoCustom extends StatelessWidget {
  final IconData iconLogo;

  const LogoCustom({super.key, required this.iconLogo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        width: 33,
        height: 33,

        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Color(0x3F23B16D),
                blurRadius: 6,
                offset: Offset(0, 0),
                spreadRadius: 0,
              ),
            ]
        ),

        child: Icon(
          iconLogo,
          size: 20,
          color: greenColor,
        ),
      ),
    );
  }
}
