import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final bool centerTitle;
  final IconData? leadingIcon;

  const CustomAppBar({
    super.key,
    required this.title,
    this.backgroundColor = Colors.white,
    this.centerTitle = true,
    this.leadingIcon, // أضف هذا السطر
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      centerTitle: centerTitle,
      leading: leadingIcon != null
          ? IconButton(
              icon: Icon(leadingIcon, color: Colors.black),
              onPressed: () => GoRouter.of(context).pop(context),
            )
          : null,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
