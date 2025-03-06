import 'package:flutter/material.dart';
import 'package:messenger/chat/presentation/view/chat_screen.dart';
import 'package:messenger/chat_list/data/models/user_model.dart';
import 'package:messenger/core/presentation/widget/custom_app_bar.dart';


class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});

  @override
  State<StatefulWidget> createState() => ChatListState();
}

class ChatListState extends State<ChatListScreen> {
  List<UserModel> chatList = [
    UserModel(
      photo: Image.asset("1"), 
      firstName: "Николай 1", 
      secondName: "Николаевич 1",
      ),
      UserModel(
        photo: Image.asset("2"), 
        firstName: "Николай 2", 
        secondName: "Николаевич 2",
      ),
      UserModel(
        photo: Image.asset("3"), 
        firstName: "Николай3 ", 
        secondName: "Николаевич 3",
      ),
      UserModel(
        photo: Image.asset("4"), 
        firstName: "Николай 4", 
        secondName: "Николаевич 4",
      ),
  ];

  @override
  void initState() {
    super.initState();
    // логика по выгрузке списка чатов из БД 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomChatListAppBar(),
      body: Center(
        child: ListView.separated(
          itemCount: chatList.length,
          itemBuilder: (context, i) =>
          ListTile(
            leading: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Center(child: Text(chatList[i].firstName.substring(0, 1) + chatList[i].secondName.substring(0, 1)),),
            ),
            trailing: Text(chatList[i].status = "В сети"),
            title: Text("${chatList[i].firstName} ${chatList[i].secondName}"),
            subtitle: Text(chatList[i].firstName.toString()),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(contact: UserModel(photo: null, firstName: chatList[i].firstName, secondName: chatList[i].secondName),))),
          ),
          separatorBuilder: (context, index) {
            return const Divider(color: Color(0xffEDF2F6));
          },
          ),
      ),
    );
  }
}