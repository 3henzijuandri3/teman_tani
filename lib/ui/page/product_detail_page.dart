import 'package:flutter/material.dart';

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
        padding: EdgeInsets.all(22),

        children: [

        ],
      ),
    );
  }
}
