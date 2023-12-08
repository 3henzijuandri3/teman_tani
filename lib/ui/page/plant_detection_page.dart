import 'package:flutter/material.dart';
import 'package:teman_tani/shared/theme.dart';
import 'package:teman_tani/ui/widget/button_custom.dart';

class PlantDetectionPage extends StatelessWidget {
  const PlantDetectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deteksi Tanaman'),
        leading: const Icon(
          Icons.arrow_back_sharp,
          size: 28,
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(22),

        children: [

          // Plant Detection Image Start
          Center(
            child: Container(
              height: 280,

              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/deteksi.png'),
                ),
              ),
            ),
          ),
          // Plant Detection Image End

          const SizedBox(height: 46),

          // Image or Camera Start
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Camera
              Container(
                width: 155,
                height: 130,

                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                
                child: Center(
                  child: Icon(
                    Icons.add_a_photo_rounded,
                    size: 74,
                    color: greenColor,
                  ),
                ),
              ),

              // Gallery
              Container(
                width: 160,
                height: 130,

                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Center(
                  child: Icon(
                    Icons.image_rounded,
                    size: 74,
                    color: greenColor,
                  ),
                ),
              )
            ],
          ),

          const SizedBox(height: 40),

          // Button Deteksi Start
          FilledButtonCustom(
              width: double.infinity,
              height: 57,
              label: 'Deteksi Tanamanmu',
              onTap: (){

              }
          ),
          // Button Deteksi End

        ],
      ),
    );
  }
}
