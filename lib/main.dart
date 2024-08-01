import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orexa_shop/utils/app_colors.dart';
import 'package:orexa_shop/views/splashScreen/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Orexa Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
        textTheme:
            GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme.copyWith(
                  titleMedium: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryColor,
                  ),
                  titleLarge: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
                  titleSmall: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  bodyLarge: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                  bodyMedium: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500),
                  bodySmall: const TextStyle(
                    fontSize: 14,
                  ),
                )),
      ),
      home: const SplashScreen(),
    );
  }
}
