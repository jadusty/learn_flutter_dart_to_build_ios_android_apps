import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final String appBarText;

  MyAppBar(this.appBar, this.appBarText);

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(appBarText));
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
