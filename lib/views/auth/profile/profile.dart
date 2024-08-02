import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orexa_shop/views/homeScreen/home_screen.dart';

import '../../../utils/app_colors.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_heading_title_subtitle.dart';
import '../../../widgets/custom_text_field.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomHeadingTitleSubtitle(
                  title: 'Profile Setup',
                  subtitle:
                      "Please fill be below details to complete\nyour profile.",
                  fontSize: 14,
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: AppColors.primaryColor, width: 2),
                          image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/profile_picture.png'))),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: AppColors.primaryColor, width: 2),
                      ),
                      child: const Icon(
                        Icons.camera_alt,
                        size: 20,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    const CustomTextField(hintText: 'Email'),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextField(
                      hintText: 'Password',
                      secureText: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextField(
                      hintText: 'Confirm Password',
                      secureText: true,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(title: 'Complete Setup',
                          onTap: ()=> Get.to(()=>const HomeScreen()),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
