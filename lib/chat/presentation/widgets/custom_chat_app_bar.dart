import 'package:flutter/material.dart';
import 'package:messenger/chat_list/data/models/user_model.dart';

class CustomChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomChatAppBar({super.key, required this.child  ,this.height = kToolbarHeight});

  final double height;
  final UserModel child;


  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackButton(
        onPressed: () => Navigator.pop(context, false),
      ),
      title: Column(
          children: [
            Text("${child.firstName} ${child.secondName}"),
            Text(child.secondName),
          ]
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(height);

}