import 'package:messenger/core/domain/entities/user_entity.dart';

class ChatEntity {
  final int id;
  final List<UserEntity> participants;

  ChatEntity(this.id, this.participants);
}