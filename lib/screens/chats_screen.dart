import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';
import 'package:whatsapp_clone/theme/appcolors.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatList.length,
      itemBuilder: (context, index) {
        final chats = chatList[index];
        return Column(
          children: [
            const Divider(thickness: 1.2, height: 5),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.greyColor,
                radius: 25,
                backgroundImage: NetworkImage(chats.imageUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    chats.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    chats.time,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.greyColor,
                    ),
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  chats.message,
                  style: const TextStyle(
                    fontSize: 15,
                    color: AppColors.greyColor,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
