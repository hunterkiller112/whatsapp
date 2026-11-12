class MessageModel {
  final String? messageText;
  final bool isSender;
  final String? imagePath;

  const MessageModel({this.messageText, this.isSender = false, this.imagePath});

  static List<MessageModel> messagesList = const [
    MessageModel(messageText: "Hello !", isSender: true),
    MessageModel(messageText: "Hello !"),
    MessageModel(
      messageText: "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!",
      isSender: true,
    ),
    MessageModel(
      messageText: "what a Great Content Tp learn Flutter",
      imagePath: "assets/images/Route.jpg",
      isSender: true,
    ),
    MessageModel(messageText: "what a Great Content Tp learn Flutter"),
  ];
}
