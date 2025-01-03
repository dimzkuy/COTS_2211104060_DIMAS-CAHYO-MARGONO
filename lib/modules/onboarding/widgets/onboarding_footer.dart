import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/onboarding_controller.dart';
import '../view/login_page.dart'; // Pastikan untuk mengimpor halaman login

class OnboardingFooter extends StatelessWidget {
  const OnboardingFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.find();

    return Column(
      children: [
        Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: controller.currentPage.value == index
                        ? Colors.green
                        : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            )),
        const SizedBox(height: 16),

        // Tombol Masuk
        ElevatedButton(
          onPressed: () {
            // Navigasi ke halaman login
            Get.to(() =>
                LoginPage()); // Ganti LoginPage dengan halaman login yang Anda buat
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xFF006C02), // Teks putih
            minimumSize: const Size(double.infinity, 50), // Lebar penuh
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(8), // Border radius melengkung
            ),
          ),
          child: const Text(
            'Masuk',
            style: TextStyle(fontSize: 16), // Ukuran font
          ),
        ),
        const SizedBox(height: 16),

        // Tombol Belum Ada Akun
        OutlinedButton(
          onPressed: () {
            // Navigasi ke halaman signup jika ada
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color(0xFF006C02),
            side: const BorderSide(color: Color(0xFF006C02)), // Teks hijau
            minimumSize: const Size(double.infinity, 50), // Lebar penuh
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(8), // Border radius melengkung
            ),
          ),
          child: const Text(
            'Belum ada akun?, Daftar dulu',
            style: TextStyle(
              fontSize: 16, // Ukuran font
              color: Color(0xFF006C02), // Teks hijau
            ),
          ),
        ),
        const SizedBox(height: 16),

        // Terms and Conditions
        GestureDetector(
          onTap: () {
            // Buka halaman terms and privacy policy jika diperlukan
          },
          child: const Text(
            'Dengan masuk atau mendaftar, kamu menyetujui Ketentuan layanan dan Kebijakan privasi.',
            style: TextStyle(fontSize: 12, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
