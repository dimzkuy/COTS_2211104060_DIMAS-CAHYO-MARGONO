import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'modules/onboarding/bindings/onboarding_binding.dart';
import 'modules/onboarding/view/onboarding_page.dart';
import 'theme/colors.dart';
import 'theme/text_styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: OnboardingBinding(), // Tambahkan binding di sini
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryGreen, // Warna utama aplikasi
        scaffoldBackgroundColor: AppColors.white, // Background default
        fontFamily:
            'SF Pro Text', // Menetapkan font keluarga default di aplikasi
        textTheme: const TextTheme(
          displayLarge: AppTextStyles.h1, // Heading besar
          displayMedium: AppTextStyles.h2, // Heading sedang
          bodyLarge: AppTextStyles.paragraph1, // Paragraf utama
          bodyMedium: AppTextStyles.paragraph2, // Paragraf kedua
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryGreen, // Warna tombol utama
            foregroundColor: AppColors.white, // Warna teks tombol
            textStyle: AppTextStyles.paragraph1, // Gaya teks pada tombol
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: AppColors.primaryGreen), // Border tombol
            foregroundColor: AppColors.primaryGreen, // Warna teks tombol
            textStyle: AppTextStyles.paragraph1,
          ),
        ),
      ),
      home: OnboardingPage(),
    );
  }
}
