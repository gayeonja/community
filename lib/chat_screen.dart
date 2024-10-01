import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'message_item.dart';

class ChatScreen extends StatefulWidget {
  final String chatName;
  final List<String> messages;
  final List<String> images;
  final List<String> names;

  ChatScreen({super.key, required this.chatName, required this.messages, required this.images, required this.names});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late List<String> messages;
  late List<String> images;
  late List<String> names;

  @override
  void initState() {
    super.initState();
    messages = List.from(widget.messages);
    images = List.from(widget.images);
    names = List.from(widget.names);
  }

  final TextEditingController _controller = TextEditingController();

  void _sendMessage(String message) {
    setState(() {
      messages.add(message);
      images.add('judy.jpg');
      names.add('Judy Hopps');
    });
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.chatName,
          style: const TextStyle(
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child:
        Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (BuildContext context, int index) {
                  return MessageItem(
                    message: messages[index],
                    name: names[index],
                    imageName: images[index],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 45,
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: 'message',
                          contentPadding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 14.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                        onSubmitted: _sendMessage,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () => _sendMessage(_controller.text),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}