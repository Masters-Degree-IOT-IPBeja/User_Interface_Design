import 'package:flutter/material.dart';

class AppBarSimple extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;
  final Color backgroundColor;

  const AppBarSimple({
    Key? key,
    required this.titleText,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: Text(titleText),
    );
  }
}
