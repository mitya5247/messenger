import 'package:flutter/material.dart';

abstract class UserEntity {
  late final int id;
  final Image? photo;
  final String firstName;
  final String secondName;
  late final String status;

  UserEntity({
    required this.photo, 
    required this.firstName, 
    required this.secondName
    });
}