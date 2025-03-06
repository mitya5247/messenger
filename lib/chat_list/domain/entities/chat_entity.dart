import 'package:messenger/chat/domain/entities/message_entity.dart';
import 'package:messenger/chat_list/domain/entities/user_entity.dart';

abstract class ChatEntity {
  final int id;
  final List<UserEntity> participants;
  final List<MessageEntity>? messages;

  ChatEntity({required this.id, required this.participants, required this.messages});
}