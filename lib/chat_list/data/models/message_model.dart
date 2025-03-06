import 'package:messenger/chat/domain/entities/message_entity.dart';

class MessageModel extends MessageEntity {
  MessageModel({
    required super.id, 
    required super.owner, 
    required super.receiver, 
    required super.content
    });
}