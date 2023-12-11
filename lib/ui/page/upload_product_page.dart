import 'package:flutter/material.dart';
import 'package:teman_tani/shared/theme.dart';
import 'package:teman_tani/ui/widget/button_custom.dart';
import 'package:teman_tani/ui/widget/input_form_custom.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadProductPage extends StatefulWidget {
  const UploadProductPage({super.key});

  @override
  State<UploadProductPage> createState() => _UploadProductPageState();
}

class _UploadProductPageState extends State<UploadProductPage> {
  int currentCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Produk'),
        leading: const Icon(
          Icons.arrow_back_sharp,
          size: 28,
        ),
      ),

      body: ListView(
        padding: EdgeInsets.all(22),
        children: [

          // Container Product Image
          Container(
            width: 330,
            height: 240,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(11)),
              border: Border.all(
                color: greenColor,
                width: 1.0,
              )
            ),

            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.cloud_upload,
                    color: brownColor,
                    size: 120,
                  ),

                  Text(
                    'Upload Image',
                    style: redTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold
                    ),
                  ),
                ],
            ),
          ),

          const SizedBox(height: 30),

          // Input Nama Barang
          BorderInputCustom(
              formHint: 'Nama Barang',
              obscureText: false
          ),

          const SizedBox(height: 20),

          // Input Harga Barang
          BorderInputCustom(
              formHint: 'Harga Barang',
              inputType: TextInputType.number,
              obscureText: false
          ),

          const SizedBox(height: 20),

          // Kategori Barang
          Text(
            'Kategori Barang',
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold
            ),
          ),

          const SizedBox(height: 10),

          Row(
            children: [

              // Kategori Tanaman
              GestureDetector(
                onTap: (){
                  setState(() {
                    currentCategory = 0;
                  });
                },
                child: Container(
                  width: 120,
                  height: 35,

                  decoration: BoxDecoration(
                    color: currentCategory == 0 ? brownColor : brownTransparentColor,
                    borderRadius: BorderRadius.circular(4)
                  ),

                  child: Center(
                    child: Text(
                      'Tanaman',
                      style: GoogleFonts.poppins(
                          color: currentCategory == 0 ? whiteColor : brownColor,
                          fontSize: 13,
                          fontWeight: semiBold
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 10),

              // Kategori Alat Tani
              GestureDetector(
                onTap: (){
                  setState(() {
                    currentCategory = 1;
                  });
                },

                child: Container(
                  width: 120,
                  height: 35,

                  decoration: BoxDecoration(
                      color: currentCategory == 1 ? brownColor : brownTransparentColor,
                      borderRadius: BorderRadius.circular(4)
                  ),

                  child: Center(
                    child: Text(
                      'Alat Tani',
                      style: GoogleFonts.poppins(
                          color: currentCategory == 1 ? whiteColor : brownColor,
                          fontSize: 13,
                          fontWeight: semiBold
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          BigBorderInputCustom(formHint: 'Deskripsi Produk'),

          const SizedBox(height: 20),

          FilledButtonCustom(
              width: double.infinity,
              height: 50,
              label: 'Tambah Barang',
              onTap: (){}
          ),
        ],
      ),
    );
  }
}
