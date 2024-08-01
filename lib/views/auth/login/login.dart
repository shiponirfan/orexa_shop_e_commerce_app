import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orexa_shop/utils/app_colors.dart';
import 'package:orexa_shop/views/auth/register/register.dart';
import 'package:orexa_shop/widgets/custom_appbar.dart';
import 'package:orexa_shop/widgets/custom_button.dart';
import 'package:orexa_shop/widgets/custom_heading_title_subtitle.dart';
import 'package:orexa_shop/widgets/custom_text_field.dart';

import '../profile/profile.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  title: 'Login Here',
                  subtitle: "Welcome back you’ve\nbeen missed!",
                  fontWeight: FontWeight.w600,
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
                      height: 10,
                    ),
                    const Align(
                        alignment: Alignment.centerRight,
                        child: CustomButton(
                          title: 'Forgot your password?',
                          bgColor: Colors.transparent,
                          textColor: AppColors.primaryColor,
                          fontSize: 14,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(title: 'Sing in', onTap: ()=> Get.to(()=> const ProfileScreen())),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                      title: 'Create new account',
                      onTap: ()=> Get.to(()=> const RegisterScreen()),
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
