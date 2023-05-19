import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/calls_screen.dart';
import 'package:whatsapp_clone/screens/chats_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: const Text("WhatsApp"),
        elevation: 0.5,
        actions: [
          const Icon(Icons.search),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: tabController,
          tabs: const [
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          CallsScreen(),
          ChatsScreen(),
          StatusScreen(),
        ],
      ),
    );
  }
}
