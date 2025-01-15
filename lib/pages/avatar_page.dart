import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Avatar Page",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage("assets/images/loading.gif"),
            image: NetworkImage(
                "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            height: 300,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 1300),
          ),
        ],
      ),
    );
  }
}
