import 'package:messenger/core/domain/entities/user_entity.dart';

class MessageEntity {
  final int id;
  final UserEntity owner;
  final UserEntity receiver;
  final String content;

  MessageEntity(this.id, this.owner, this.receiver, this.content);
}