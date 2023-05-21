import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/image_path.dart';
import 'package:whatsapp_clone/models/call_list.dart';
import 'package:whatsapp_clone/theme/appcolors.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

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
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ZegoUIKitPrebuiltCall(
                      appID:
                          1618985550, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
                      appSign:
                          "0c7f0040c309aa70b2db2679c6c5305f74ac85c35ff6d90ac1a82676dbe0e48c", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
                      userID: 'user_id',
                      userName: call.name,
                      callID: call.id.toString(),
                      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
                      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall()
                        ..onOnlySelfInRoom =
                            (context) => Navigator.of(context).pop(),
                    ),
                  ),
                );
              },
              child: ListTile(
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
            ),
          ],
        );
      },
    );
  }
}
