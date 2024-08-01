import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orexa_shop/views/auth/login/login.dart';
import 'package:orexa_shop/views/auth/profile/profile.dart';
import '../../../utils/app_colors.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_heading_title_subtitle.dart';
import '../../../widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                  title: 'Create Account',
                  subtitle: "Create an account so you can explore all the existing products",
                  fontSize: 14,
                ),
                const SizedBox(
                  height: 80,
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
                          child: CustomButton(title: 'Sing up', onTap: ()=> Get.to(()=> const ProfileScreen()),),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                      title: 'Already have an account',
                      onTap: ()=> Get.to(()=> const LoginScreen()),
                      bgColor: Colors.transparent,
                      textColor: const Color(0xFF494949),
                      fontSize: 14,
                    )
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
