import 'package:flutter/material.dart';

import '../models/message_model.dart';

class Message extends StatelessWidget {
  final MessageModel messageInfo;
  const Message({super.key, required this.messageInfo});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Align(
      alignment: messageInfo.isSender ? Alignment.topLeft : Alignment.topRight,
      child: Container(
        constraints: BoxConstraints(maxWidth: 0.7 * screenWidth),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: messageInfo.isSender ? Color(0xFF168C4B) : Color(0xFF232D36),
          borderRadius: BorderRadius.only(
            topRight: messageInfo.isSender
                ? Radius.circular(16)
                : Radius.circular(0),
            topLeft: messageInfo.isSender
                ? Radius.circular(0)
                : Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (messageInfo.messageText != null)
              Text(
                messageInfo.messageText!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.15,
                ),
              ),
            if (messageInfo.imagePath != null) ...[
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(messageInfo.imagePath!, fit: BoxFit.contain),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
