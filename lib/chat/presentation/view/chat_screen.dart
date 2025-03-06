import 'package:flutter/material.dart';
import 'package:messenger/chat/presentation/widgets/custom_chat_app_bar.dart';
import 'package:messenger/chat_list/data/models/user_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.contact});

  final UserModel contact;
  
  @override
  State<StatefulWidget> createState() {
    return ChatScreenState();
  }

}

class ChatScreenState extends State<ChatScreen> {

  @override
  void initState() {
    super.initState();
    // логика по получению сообщений из БД
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomChatAppBar(child: widget.contact,),
      body: const Center(
        child: Text("123"),
      ),
    );
  }
}