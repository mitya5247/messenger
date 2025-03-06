
import 'package:flutter/material.dart';

abstract class ContactWidget extends StatefulWidget {
  abstract final Image photo;
  abstract final String title;
  abstract final String subtitle;

  const ContactWidget({super.key});
}