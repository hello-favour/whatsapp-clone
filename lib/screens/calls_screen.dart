import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/image_path.dart';
import 'package:whatsapp_clone/models/call_list.dart';
import 'package:whatsapp_clone/theme/appcolors.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callList.length,
      itemBuilder: (context, index) {
        final call = callList[index];
        return Column(
          children: [
            const Divider(height: 5, thickness: 1.2),
            ListTile(
              title: Text(
                call.name,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                  ImagePath.profileImage,
                ),
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    call.status,
                    Text(
                      call.time,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  call.type.icon,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
