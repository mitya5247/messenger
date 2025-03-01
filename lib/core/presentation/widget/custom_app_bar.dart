import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger/core/theme/app_colors.dart';

import '../../theme/app_fonts.dart';

class CustomChatListAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomChatListAppBar({super.key, this.height = kToolbarHeight});

  final double height;


  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: backgroundLightColor,
          title: const Text('Чаты'),
          titleTextStyle: f39w600,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 5, right: 5),
          child: CupertinoSearchTextField(),
        )
    ],
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(height + 45);

}