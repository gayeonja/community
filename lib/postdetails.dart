import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'group_info.dart';

class PostDetailScreen extends StatefulWidget {
  final Group group;
  final int postIndex;

  PostDetailScreen({required this.group, required this.postIndex});

  @override
  _PostDetailScreenState createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  late TextEditingController _commentController;

  @override
  void initState() {
    super.initState();
    _commentController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    String writer = widget.group.writers[widget.postIndex];
    String writerImage = widget.group.writersImages[widget.postIndex];
    String image = widget.group.images[widget.postIndex];
    String caption = widget.group.captions[widget.postIndex];
    List<String> commentWriters = widget.group.commentWriters[widget.postIndex];
    List<String> comments = widget.group.comments[widget.postIndex];
    List<String> commentPhotos = widget.group.commentPhotos[widget.postIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$writer\'s Post',
          style: const TextStyle(
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/profilepic/$writerImage',),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      writer,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Text(
                  caption,
                  style: const TextStyle(fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: 10.0),
                Image.asset(
                  'assets/profilepic/$image',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: commentWriters.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/profilepic/${commentPhotos[index]}'),
                    radius: 20,
                  ),
                  title: Text(
                      commentWriters[index],
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                  ),
                  subtitle: Text(
                      comments[index],
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                      ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 45,
                    child: TextField(
                      controller: _commentController,
                      decoration: InputDecoration(
                        hintText: 'message',
                        contentPadding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 14.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                IconButton(
                  onPressed: () {
                    String newComment = _commentController.text;
                    if (newComment.isNotEmpty) {
                      setState(() {
                        commentWriters.add('Judy Hopps');
                        commentPhotos.add('judy.jpg');
                        comments.add(newComment);
                        _commentController.clear();
                      });
                    }
                  },
                  icon: const Icon(Icons.comment),
                  tooltip: 'Add Comment',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}