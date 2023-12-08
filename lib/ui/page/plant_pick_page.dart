import 'package:flutter/material.dart';
import 'package:teman_tani/shared/theme.dart';
import 'package:teman_tani/ui/widget/button_custom.dart';

class PlantPickPage extends StatelessWidget {
  const PlantPickPage({super.key});

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

          // Pilih Tanaman Text Start
          Text(
            'Pilih tanaman untuk deteksi',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold
            ),
          ),
          // Pilih Tanaman Text End

          const SizedBox(height: 26),

          // List Tanaman Start
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Padi
              PlantButtonCustom(
                  label: 'Padi',
                  plantImage: 'assets/padi.png',
                  onTap: (){

                  }
              ),

              // Singkong
              PlantButtonCustom(
                  label: 'Singkong',
                  plantImage: 'assets/ubi.png',
                  onTap: (){

                  }
              ),

              // Kentang
              PlantButtonCustom(
                  label: 'Kentang',
                  plantImage: 'assets/kentang.png',
                  onTap: (){

                  }
              ),
            ],
          ),

          const SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Tomat
              PlantButtonCustom(
                  label: 'Tomat',
                  plantImage: 'assets/tomat.png',
                  onTap: (){

                  }
              ),

              // Jagung
              PlantButtonCustom(
                  label: 'Jagung',
                  plantImage: 'assets/jagung.png',
                  onTap: (){

                  }
              ),

              // Cabai
              PlantButtonCustom(
                  label: 'Cabai',
                  plantImage: 'assets/cabai.png',
                  onTap: (){

                  }
              ),
            ],
          ),
          // List Tanaman End

        ],
      ),
    );
  }
}
