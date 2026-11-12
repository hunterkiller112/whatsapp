import 'package:flutter/material.dart';
import 'package:whatsapp_screen/custom_widgets/message_widgets.dart';
import 'package:whatsapp_screen/models/message_model.dart';

import '../custom_widgets/input_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF181818),
        image: DecorationImage(
          image: AssetImage("assets/images/background_pattern.png"),
          fit: BoxFit.cover,
          opacity: 0.35,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xFF168C4B),
          toolbarHeight: 64,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
          leadingWidth: 36,
          titleSpacing: 4,
          title: const Row(
            spacing: 8,
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage("assets/images/profile_image.png"),
              ),
              Text(
                "John Safwat",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.video_call_outlined),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  itemBuilder: (context, index) {
                    return Message(
                      messageInfo: MessageModel.messagesList[index],
                    );
                  },
                  itemCount: MessageModel.messagesList.length,
                ),
              ),
              InputField(),
            ],
          ),
        ),
      ),
    );
  }
}
