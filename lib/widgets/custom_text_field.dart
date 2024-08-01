import 'package:flutter/material.dart';
import 'package:orexa_shop/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool? secureText;

  const CustomTextField({super.key, required this.hintText, this.secureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secureText ?? false,
      style: Theme.of(context)
          .textTheme
          .bodyLarge
          ?.copyWith(color: const Color(0xFF626262)),
      decoration: InputDecoration(
        fillColor: AppColors.textFieldColor,
        filled: true,
        hintText: hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: const Color(0xFF626262)),
        contentPadding: const EdgeInsets.all(20),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: AppColors.textFieldColor,
            width: 2,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
