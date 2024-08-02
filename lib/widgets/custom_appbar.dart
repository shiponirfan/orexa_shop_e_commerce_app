import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final void Function()? searchOnTap;
  final bool? search;
  final bool? menu;
  final void Function()? menuOpen;

  const CustomAppbar(
      {super.key, this.searchOnTap, this.search, this.menu, this.menuOpen});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 60,
      forceMaterialTransparency: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: InkWell(
          onTap: menuOpen ?? Get.back,
          child: Container(
              decoration: const BoxDecoration(
                  color: AppColors.backgroundColor, shape: BoxShape.circle),
              child: Icon(
                menu == true ? Icons.menu : Icons.keyboard_backspace_outlined,
              )),
        ),
      ),
      actions: [
        if (search == true)
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: searchOnTap,
              child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                      color: AppColors.backgroundColor, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.search,
                  )),
            ),
          ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
