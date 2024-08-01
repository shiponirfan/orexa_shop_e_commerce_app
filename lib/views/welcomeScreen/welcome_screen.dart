import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orexa_shop/views/auth/login/login.dart';
import 'package:orexa_shop/views/auth/register/register.dart';
import 'package:orexa_shop/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/welcome_image.png'),
              Column(
                children: [
                  Text(
                    'Discover Your\nBest Product here',
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Explore all the existing products\nbased on your interest',
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomButton(
                    title: 'Login',
                    onTap: () => Get.to(() => const LoginScreen()),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: CustomButton(
                    title: 'Register',
                    onTap: () => Get.to(() => const RegisterScreen()),
                    bgColor: Colors.transparent,
                    textColor: Colors.black,
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
