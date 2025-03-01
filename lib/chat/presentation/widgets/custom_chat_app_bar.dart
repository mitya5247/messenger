import 'package:flutter/material.dart';

class CustomChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomChatAppBar({super.key, required this.child  ,this.height = kToolbarHeight});

  final double height;
  Widget child;


  
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.arrow_back_ios), 
      ],
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(height);

}