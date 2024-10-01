import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'messages.dart';
import 'profile.dart';
import 'group.dart';

enum UserState { profile, messages, group }

class MainWidget extends StatelessWidget {

  final ValueNotifier<UserState> _userStateNotifier = ValueNotifier(UserState.group);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child: SizedBox(
                  height: 100,
                  width: 200,
                  child: Image.asset(
                    'assets/icons/community.png',
                    fit: BoxFit.contain,
                  ),
                ),
            ),
        ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: _userStateNotifier,
                builder: (context, userState, _) {
                  switch (userState) {
                    case UserState.group:
                      return group_widget();
                    case UserState.messages:
                      return messages_widget();
                    case UserState.profile:
                      return profile_widget();
                    default :
                      return Container();
                  }
                },
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.group, size: 40),
                    onPressed: () {
                      _userStateNotifier.value = UserState.group;
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.chat_outlined, size: 40),
                    onPressed: () {
                      _userStateNotifier.value = UserState.messages;
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.person, size: 40),
                    onPressed: () {
                      _userStateNotifier.value = UserState.profile;
                    },
                  ),
                ],
              ),
            ),
          ])
      );
    }
}