import 'package:flutter/material.dart';
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
                    'Discover Your\nDream Job here',
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Explore all the existing job roles based on your\ninterest and study major',
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                      child: CustomButton(
                    title: 'Login',
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: CustomButton(
                    title: 'Register',
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
