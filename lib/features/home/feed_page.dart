import 'package:club_frontend/common/routes/routes_name.dart';
import 'package:club_frontend/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Pallete.greenColor,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RoutesName.chatpage);
            },
            icon: Icon(
              Icons.chat,
              color: Pallete.greenColor,
            ),
          ),
        ],
      ),
    );
  }
}
