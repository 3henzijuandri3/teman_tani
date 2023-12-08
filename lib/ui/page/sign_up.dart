import 'package:flutter/material.dart';
import 'package:teman_tani/shared/theme.dart';
import 'package:teman_tani/ui/widget/button_custom.dart';

import '../widget/input_form_custom.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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

          // Register Image Start
          Center(
            child: Container(
              width: 200,
              height: 180,

              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/register_logo.png'),
                ),
              ),
            ),
          ),
          // Register Image End

          const SizedBox(height: 16),

          // Register Text Start
          Text(
            'Daftar Sekarang',
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: bold
            ),
          ),

          const SizedBox(height: 12),

          Text(
            'Silahkan daftar terlebih dahulu agar bisa masuk dan mengeksplor lebih',
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: light
            ),
          ),
          // Register Text End

          const SizedBox(height: 26),

          // Nama Input Start
          const InputCustom(
            formHint: 'Nama',
            formLogo: Icons.person,
            obscureText: false,
          ),
          // Nama Input End

          const SizedBox(height: 20),

          // Email Input Start
          const InputCustom(
            formHint: 'Email',
            formLogo: Icons.mail,
            obscureText: false,
          ),
          // Email Input End

          const SizedBox(height: 20),

          // Phone Input Start
          const InputCustom(
            formHint: 'No.Telepon',
            formLogo: Icons.phone,
            obscureText: false,
            inputType: TextInputType.phone,
          ),
          // Phone Input End

          const SizedBox(height: 20),

          // Password Input Start
          const InputCustom(
            formHint: 'Password',
            formLogo: Icons.lock,
            obscureText: true,
          ),
          // Password Input End

          const SizedBox(height: 40),

          // Button Daftar Start
          FilledButtonCustom(
              width: double.infinity,
              height: 54,
              label: 'Daftar Sekarang',
              onTap: (){

              }
          ),
          // Button Daftar End
        ],
      ),
    );
  }
}
