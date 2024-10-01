import 'package:final_project/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'group_info.dart';

class GroupScreen extends StatefulWidget {
  final Group group;

  GroupScreen({required this.group});

  @override
  _GroupScreenState createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {

  late final Group group;

  @override
  void initState() {
    super.initState();
    group = widget.group;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            group.groupName,
            style: const TextStyle(
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Navigate back to previous screen
          },
        ),
      ),
      body: ListView.builder(
        itemCount: widget.group.images.length,
        itemBuilder: (BuildContext context, int index) {
          return Post(
            writer: widget.group.writers[index],
            writerImage: widget.group.writersImages[index],
            image: widget.group.images[index],
            caption: widget.group.captions[index],
            commentWriters: widget.group.commentWriters[index],
            comments: widget.group.comments[index],
            post_index: index,
            group: widget.group,
          );
        },
      ),
    );
  }
}