// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ChatModel {
  final String name;
  final String message;
  final String time;
  final String imageUrl;
  ChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.imageUrl,
  });
}

List<ChatModel> chatList = [
  ChatModel(
    name: "Elon Musk",
    message: "Subscribe to twitter blue check now",
    time: "11:40 AM",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg",
  ),
  ChatModel(
    name: "Mark Zukerberg",
    message: "How are you doing?",
    time: "3:00 AM",
    imageUrl:
        "https://cdn.britannica.com/99/236599-050-1199AD2C/Mark-Zuckerberg-2019.jpg",
  ),
  ChatModel(
    name: "Sundar Pichai",
    message: "We build bard Ai to transform the world",
    time: "6:30 PM",
    imageUrl:
        "https://image.cnbcfm.com/api/v1/image/106486746-1586817917019gettyimages-1195292767.jpeg?v=1626285251",
  ),
  ChatModel(
    name: "Flutter Development",
    message: "Hey! can you build me an app with Flutter...?",
    time: "10:30 AM",
    imageUrl:
        "https://images.ctfassets.net/23aumh6u8s0i/4TsG2mTRrLFhlQ9G1m19sC/4c9f98d56165a0bdd71cbe7b9c2e2484/flutter",
  ),
  ChatModel(
    name: "Technology Machine",
    message: "Hey! do you know ai is taking over??",
    time: "12:00 AM",
    imageUrl:
        "https://bestinau.com.au/wp-content/uploads/2018/04/Trends-in-technology-that-are-changing-the-world-1280x720.jpg",
  ),
  ChatModel(
    name: "Flutter Code",
    message:
        "I write code for a living believe me  am gonna be a very good dev...",
    time: "7:00 PM",
    imageUrl:
        "https://uploads-ssl.webflow.com/5ee12d8e99cde2e20255c16c/5f68fc9ed153ee4b00fdd2a4_codespaces.png",
  ),
  ChatModel(
    name: "Elon Musk",
    message: "Subscribe to twitter blue check now",
    time: "11:40 AM",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg",
  ),
  ChatModel(
    name: "Mark Zukerberg",
    message: "How are you doing?",
    time: "3:00 AM",
    imageUrl:
        "https://cdn.britannica.com/99/236599-050-1199AD2C/Mark-Zuckerberg-2019.jpg",
  ),
  ChatModel(
    name: "Sundar Pichai",
    message: "We build bard Ai to transform the world",
    time: "6:30 PM",
    imageUrl:
        "https://image.cnbcfm.com/api/v1/image/106486746-1586817917019gettyimages-1195292767.jpeg?v=1626285251",
  ),
  ChatModel(
    name: "Flutter Development",
    message: "Hey! can you build me an app with Flutter...?",
    time: "10:30 AM",
    imageUrl:
        "https://images.ctfassets.net/23aumh6u8s0i/4TsG2mTRrLFhlQ9G1m19sC/4c9f98d56165a0bdd71cbe7b9c2e2484/flutter",
  ),
  ChatModel(
    name: "Technology Machine",
    message: "Hey! do you know ai is taking over??",
    time: "12:00 AM",
    imageUrl:
        "https://bestinau.com.au/wp-content/uploads/2018/04/Trends-in-technology-that-are-changing-the-world-1280x720.jpg",
  ),
  ChatModel(
    name: "Flutter Code",
    message:
        "I write code for a living believe me  am gonna be a very good dev...",
    time: "7:00 PM",
    imageUrl:
        "https://uploads-ssl.webflow.com/5ee12d8e99cde2e20255c16c/5f68fc9ed153ee4b00fdd2a4_codespaces.png",
  ),
];
