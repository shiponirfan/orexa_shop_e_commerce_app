import 'package:flutter/material.dart';
import 'package:orexa_shop/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color? bgColor;
  final Color? textColor;
  final double? fontSize;
  final void Function()? onTap;

  const CustomButton(
      {super.key,
      required this.title,
      this.bgColor,
      this.onTap,
      this.textColor,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: bgColor ?? AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: textColor ?? Colors.white,
                  fontSize: fontSize ?? 20,
                ),
            textAlign: TextAlign.center,
          )),
    );
  }
}
