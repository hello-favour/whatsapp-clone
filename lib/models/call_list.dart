// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Call {
  final String name;
  final String time;
  final String callImage;
  final Icon status;
  final Icon type;
  final int? id;
  Call({
    required this.callImage,
    required this.name,
    required this.time,
    required this.status,
    required this.type,
    this.id,
  });
}

List<Call> callList = [
  Call(
    callImage:
        "https://upload.wikimedia.org/wikipedia/commons/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg",
    name: "Busket",
    time: "May 17, 9:20 Pm",
    id: 2,
    status: const Icon(
      Icons.call_received,
      color: Colors.red,
    ),
    type: const Icon(Icons.phone),
  ),
  Call(
    callImage:
        "https://upload.wikimedia.org/wikipedia/commons/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg",
    name: "Paul",
    time: "Yesterday 17, 9:27 Am",
    id: 4,
    status: const Icon(
      Icons.call_received,
      color: Colors.green,
    ),
    type: const Icon(Icons.videocam),
  ),
  Call(
    callImage:
        "https://upload.wikimedia.org/wikipedia/commons/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg",
    name: "Gospel Clement",
    time: "Yesterday 21, 12:33 PM",
    id: 5,
    status: const Icon(
      Icons.call_received,
      color: Colors.green,
    ),
    type: const Icon(Icons.phone),
  ),
  Call(
    callImage:
        "https://bestinau.com.au/wp-content/uploads/2018/04/Trends-in-technology-that-are-changing-the-world-1280x720.jpg",
    name: "Thankidrumz",
    time: "May 17, 3:33 PM",
    id: 6,
    status: const Icon(
      Icons.call_received,
      color: Colors.red,
    ),
    type: const Icon(Icons.videocam),
  ),
];
