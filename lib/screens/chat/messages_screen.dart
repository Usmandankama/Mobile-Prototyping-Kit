import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/screens/chat/components/chat_bubble.dart';
import 'package:prototyping_kit/screens/chat/components/chat_inputbar.dart';
import 'package:prototyping_kit/themes/app_colors.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: BackButton(),
        title: const Text('Brooke Davis'),
        actions: const [
          Padding(padding: EdgeInsets.only(right: 16), child: CircleAvatar()),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.w),
              children: const [
                ChatBubble(text: 'Hey Lucas!', isMe: false),
                ChatBubble(text: 'Hi Brooke!', isMe: true),
                ChatBubble(text: "How's your project going?", isMe: false),
                ChatBubble(
                  text: "It's going well. Thanks for asking!",
                  isMe: true,
                ),
                ChatBubble(
                  text: 'No worries. Let me know if you need any help 😊',
                  isMe: false,
                ),
              ],
            ),
          ),
          const ChatInput(),
        ],
      ),
    );
  }
}
