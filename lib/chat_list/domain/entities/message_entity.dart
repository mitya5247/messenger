import 'package:messenger/chat_list/domain/entities/user_entity.dart';

abstract class MessageEntity {
  final int id;
  final DateTime sent;
  final DateTime read;
  final UserEntity sender;
  final UserEntity receiver;
  final dynamic content;

  MessageEntity({
    required this.id, 
    required this.sent, 
    required this.read, 
    required this.sender, 
    required this.receiver,
    required this.content,
    });
}