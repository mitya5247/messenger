import 'package:flutter/material.dart';
import 'package:messenger/chat_list/presentation/view/chat_list_screen.dart';

import '../../../main.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ChatListScreen(),
    );
  }
}