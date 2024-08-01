import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 50,
      forceMaterialTransparency: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: InkWell(
          onTap: Get.back,
          child: Container(
              decoration: const BoxDecoration(
                  color: AppColors.backgroundColor, shape: BoxShape.circle),
              child: const Icon(
                Icons.keyboard_backspace_outlined,
              )),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
