import 'package:messenger/chat_list/domain/entities/chat_entity.dart';

class ChatModel extends ChatEntity {
  ChatModel({
    required super.id, 
    required super.participants, 
    required super.messages
    });
}