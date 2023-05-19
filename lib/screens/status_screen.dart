import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/image_path.dart';
import 'package:whatsapp_clone/theme/appcolors.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff2f2f2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            color: Colors.white,
            elevation: 0,
            child: ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.greyColor,
                    radius: 30,
                    backgroundImage: NetworkImage(ImagePath.profileImage),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 1,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              title: const Text(
                "My Status",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text("Tap to add status update"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Recents updates",
              style: TextStyle(
                color: AppColors.greyColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
