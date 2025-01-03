import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/onboarding_controller.dart';
import '../widgets/onboarding_header.dart';
import '../widgets/onboarding_footer.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.find();

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const OnboardingHeader(),
            Expanded(
              child: PageView(
                onPageChanged: (index) => controller.changePage(index),
                children: const [
                  OnboardingContent(
                    imagePath: 'assets/images/onboarding_image_1.png',
                    title: 'Selamat datang di gojek!',
                    description:
                        'Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin semua kebutuhan mu, kapanpun, dan di manapun.',
                  ),
                  OnboardingContent(
                    imagePath: 'assets/images/onboarding_image_2.png',
                    title: 'Transportasi & logistik',
                    description:
                        'Antarin kamu jalan atau ambilin barang lebih gampang tinggal ngeklik doang~',
                  ),
                  OnboardingContent(
                    imagePath: 'assets/images/onboarding_image_3.png',
                    title: 'Pesan makanan & belanja',
                    description:
                        'Lagi ngidam sesuatu? Gojek beliin gak pakai lama.',
                  ),
                ],
              ),
            ),
            const OnboardingFooter(),
          ],
        ),
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const OnboardingContent({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          height: 200,
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
