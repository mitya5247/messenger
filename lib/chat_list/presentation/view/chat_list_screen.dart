import 'package:flutter/material.dart';
import 'package:messenger/chat/presentation/view/chat_screen.dart';
import 'package:messenger/chat_list/domain/entities/chat_entity.dart';
import 'package:messenger/core/presentation/widget/custom_app_bar.dart';


class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});

  @override
  State<StatefulWidget> createState() => ChatListState();
}

class ChatListState extends State<ChatListScreen> {
  List<ChatEntity> chatList = [
    ChatEntity(
      id: 1, 
      participants: List.empty(), 
    ),
    ChatEntity(
      id: 2, 
      participants: List.empty(), 
    ),
    ChatEntity(
      id: 3, 
      participants: List.empty(), 
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomChatListAppBar(),
      body: Center(
        child: ListView.separated(
          itemCount: chatList.length,
          itemBuilder: (context, i) =>
          ListTile(
            title: Text(chatList[i].id.toString()),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatScreen())),
          ),
          separatorBuilder: (context, index) {
            return const Divider(color: Color(0xffEDF2F6));
          },
          ),
      ),
    );
  }
}