import 'package:final_project/postdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'group_info.dart';

class Post extends StatelessWidget {
  final String writer;
  final String writerImage;
  final String image;
  final String caption;
  final List<String> commentWriters;
  final List<String> comments;
  final int post_index;
  final Group group;

  Post({
    required this.writer,
    required this.writerImage,
    required this.image,
    required this.caption,
    required this.commentWriters,
    required this.comments,
    required this.post_index,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PostDetailScreen(
              group: group,
              postIndex: post_index,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/profilepic/$writerImage'),
                ),
                const SizedBox(width: 10.0),
                Text(
                  writer,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Text(
              caption,
              style: const TextStyle(
                  fontWeight: FontWeight.normal
              ),
            ),
            const SizedBox(height: 10.0),
            Image.asset(
              'assets/profilepic/$image',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}