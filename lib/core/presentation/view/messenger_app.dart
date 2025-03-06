import 'package:flutter/material.dart';
import 'package:messenger/chat_list/presentation/view/chat_list_screen.dart';


class MessengerApp extends StatefulWidget {
  const MessengerApp({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => MessengerAppState();
}

class MessengerAppState extends State<MessengerApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messenger',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ChatListScreen(),
    );
  }
}