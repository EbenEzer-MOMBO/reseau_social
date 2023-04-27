import 'package:flutter/material.dart';

class FacebookPost extends StatelessWidget {
  final String userProfileImageUrl;
  final String userName;
  final String postImageUrl;
  final int likesCount;
  final int commentsCount;

  const FacebookPost({
    Key? key,
    required this.userProfileImageUrl,
    required this.userName,
    required this.postImageUrl,
    required this.likesCount,
    required this.commentsCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(userProfileImageUrl),
            ),
            title: Text(userName),
            subtitle: const Text('Il y a 2 heures'),
            trailing: const Icon(Icons.more_vert),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              postImageUrl,
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Image.asset("assets/images/icons8-thumb-circled-24.png"),
                      Positioned(
                        left: 16,
                        child: Image.asset("assets/images/icons8-love-circled-24.png")
                      ),
                    ],
                  ),
                ),
              ),
              Text("$likesCount"),
              const Spacer(),
              Text("$commentsCount commentaires"),
            ],
          ),
          Divider(
            height: 0.8,
            color: Colors.grey.shade400,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.thumb_up_outlined,
                  size: 20,
                  color: Colors.black87,
                ),
                label: const Text(
                  'Like',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.comment_outlined,
                  size: 20,
                  color: Colors.black87,
                ),
                label: const Text(
                  'Commenter',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.share_outlined,
                  size: 20,
                  color: Colors.black87,
                ),
                label: const Text(
                  'Partager',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
