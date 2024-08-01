import 'package:flutter/material.dart';

class CustomHeadingTitleSubtitle extends StatelessWidget {
  final String title;
  final String subtitle;
  final FontWeight? fontWeight;
  final double? fontSize;

  const CustomHeadingTitleSubtitle(
      {super.key,
      required this.title,
      required this.subtitle,
      this.fontWeight, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: fontWeight ?? FontWeight.w500,
            fontSize: fontSize ?? 20,
              ), textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
