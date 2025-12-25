import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppIcons {
  // 🔙 Navigation
  static IconData back(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.iOS
        ? CupertinoIcons.chevron_back
        : Icons.arrow_back;
  }

  static IconData close(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.iOS
        ? CupertinoIcons.clear
        : Icons.close;
  }

  // ➕ Actions
  static IconData add(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.iOS
        ? CupertinoIcons.add
        : Icons.add;
  }

  static IconData edit(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.iOS
        ? CupertinoIcons.pencil
        : Icons.edit;
  }

  static IconData delete(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.iOS
        ? CupertinoIcons.delete
        : Icons.delete;
  }

  // 💬 Communication
  static IconData chat(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.iOS
        ? CupertinoIcons.chat_bubble
        : Icons.chat;
  }

  // ⚙️ System
  static IconData settings(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.iOS
        ? CupertinoIcons.settings
        : Icons.settings;
  }

  static IconData search(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.iOS
        ? CupertinoIcons.search
        : Icons.search;
  }

  static IconData more(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.iOS
        ? CupertinoIcons.ellipsis
        : Icons.more_vert;
  }

  // 👤 User
  static IconData profile(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.iOS
        ? CupertinoIcons.person
        : Icons.person;
  }

  // 🛒 Commerce
  static IconData cart(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.iOS
        ? CupertinoIcons.cart
        : Icons.shopping_cart;
  }
}
