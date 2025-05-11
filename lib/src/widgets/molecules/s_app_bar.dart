import 'package:flutter/material.dart';

class SAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SAppBar({
    super.key,
    this.title,
    this.showBackButton = false,
    this.onBackPressed,
    this.rightWidget,
  });

  final String? title;
  final bool showBackButton;
  final VoidCallback? onBackPressed;
  final Widget? rightWidget;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
            )
          : null,
      title: title != null
          ? Text(
              title!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            )
          : null,
      centerTitle: true,
      actions: rightWidget != null ? [rightWidget!] : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
