import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_route.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? actions;
  final String? label;
  final IconData ?icon;
  final VoidCallback? onPressed;
  final bool ?isPassScreen;
    CustomAppBar({
    this.label,
    this.actions,
    this.isPassScreen,
    this.icon,
    this.onPressed,
    Key? key,
  }) : super(key: key);
  Size get preferredSize => const Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: isPassScreen==true?
          IconButton(onPressed: onPressed, icon:  Icon(icon),
          ):null,
      backgroundColor: Colors.transparent, // remove color from appbar
      elevation: 0,
      actions: actions,
    );
  }
}
