import 'package:messenger/chat_list/domain/entities/user_entity.dart';

class ChatEntity {
  final int id;
  final List<UserEntity> participants;

  ChatEntity({required this.id, required this.participants});
}