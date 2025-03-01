import 'package:flutter/material.dart';
import 'package:messenger/chat/presentation/widgets/custom_chat_app_bar.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return ChatScreenState();
  }

}

class ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomChatAppBar(child: const Text("213"),),
      body: Center(
        
      ),
    );
  }
}