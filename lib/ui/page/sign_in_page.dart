import 'package:flutter/material.dart';
import 'package:teman_tani/shared/theme.dart';
import 'package:teman_tani/ui/widget/button_custom.dart';
import 'package:teman_tani/ui/widget/input_form_custom.dart';

class SignInPage extends StatelessWidget {


  const SignInPage({super.key});

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
        padding: const EdgeInsets.all(22),

        children: [

          // Login Image Start
          Center(
            child: Container(
              height: 250,

              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/login_logo.png'),
                ),
              ),
            ),
          ),
          // Login Image End

          const SizedBox(height: 26),

          // Login Text Start
          Text(
            'Selamat Datang!',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: bold
            ),
          ),

          const SizedBox(height: 18),

          Text(
            'Selamat datang kembali di Teman Tani!',
            textAlign: TextAlign.start,
            style: greyTextStyle.copyWith(
              fontSize: 14,
              fontWeight: regular
            ),
          ),

          Text(
            'Silahkan isi form telebih dahulu agar bisa masuk',
            textAlign: TextAlign.start,
            style: greyTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular
            ),
          ),
          // Login Text End

          const SizedBox(height: 26),

          // Email Input Start
          const InputCustom(
            formHint: 'Email',
            formLogo: Icons.mail,
            obscureText: false,
          ),
          // Email Input End

          const SizedBox(height: 26),

          // Password Input Start
          const InputCustom(
            formHint: 'Password',
            formLogo: Icons.lock,
            obscureText: true,
          ),
          // Password Input End

          const SizedBox(height: 34),

          // Button Masuk Start
          FilledButtonCustom(
              width: double.infinity,
              height: 54,
              label: 'Masuk',
              onTap: (){

              }
          ),
          // Button Masuk End

          const SizedBox(height: 10),

          // Text Register Start
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Belum punya akun?',
                style: blackTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: bold
                ),
              ),

              TextButtonCustom(
                  label: 'Daftar Sekarang!',
                  onTap: (){

                  }
              ),
            ],
          )
          // Text Register End

        ],
      ),
    );
  }
}
