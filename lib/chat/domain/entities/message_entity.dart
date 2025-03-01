import 'package:messenger/chat_list/domain/entities/user_entity.dart';

class MessageEntity {
  final int id;
  final UserEntity owner;
  final UserEntity receiver;
  final String content;

  MessageEntity({required this.id, required this.owner, required this.receiver, required this.content});
}