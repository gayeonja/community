import 'package:flutter/material.dart';
import 'chat_screen.dart';

List<String> zpd_messages = ['Everyone, please round up for our morning meeting.', 'sry chief gonna be 5 mins late', 'Fifty push-ups for every minute Wilde.', 'Told you to come early', 'Good thing I got to work early.', 'Timer starts now', 'Chief I\'ll be 10 minutes late but I have an excuse!'];
List<String> zpd_images = ['cheifbogo.jpg', 'nick.JPG', 'cheifbogo.jpg', 'wolfard.jpg', 'fangmeyer.JPG', 'officerhiggins.jpg', 'OfficerClawhauser.jpg'];
List<String> zpd_names = ['Chief Bogo', 'Nick Wilde', 'Chief Bogo', 'Officer Wolfard', 'Officer Fangmeyer', 'Officer Higgins', "Officer Clawhauser"];

List<String> friends_messages = ['Flash I sent you a speeding ticket', 'Flash that\'s ur fifth ticket this month', 'let', 'drive', 'me', 'go', 'slower'];
List<String> friends_images = ['judy.jpg', 'nick.JPG', 'flash.jpg', 'priscilla.jpg', 'flash.jpg', 'flash.jpg', 'priscilla.jpg'];
List<String> friends_names = ['Judy Hopps', 'Nick Wilde', 'Flash Slothmore', 'Priscilla Tripletoe', 'Flash Slothmore', 'Flash Slothmore', 'Priscilla Tripletoe'];

List<String> fam_messages = ['Come eat.', 'Aww I want mom\'s food', 'Yay! To the dining room!', 'Is the food soft today?', 'Yes Pop! It\'s carrot soup!', 'Yay!', 'Yay!', 'Yay!', 'Yay!'];
List<String> fam_images = ['bonnie_hopps.png', 'judy.jpg', 'molly_hopps.png', 'Pop-pop_hopps.png', 'stu_hopps.png', '', '', '', ''];
List<String> fam_names = ['Bonnie Hopps', 'Judy Hopps', 'Molly Hopps', 'Pop-pop Hopps', 'Stu Hopps', 'Sibling #35', 'Sibling #100', 'Sibling #275', 'Sibling #107'];

List<String> dad_messages = ["Dad! I said no iceing on my birthday!", "I'm so sorry daughter, but I must.", "I'm sorry Fru Fru! This weasel is making it a little hard for us.", "Oh it's for Judy? Then it's fine."];
List<String> dad_images = ["frufru.jpg", "mr-big.jpg", "judy.jpg", "frufru.jpg"];
List<String> dad_names = ["Frubelina \"Fru Fru\" Big", "Mr. Big", "Judy Hopps", "Frubelina \"Fru Fru\" Big"];

class messages_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'My Messages',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
        )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen(chatName: 'ZPD Officers 2024', messages: zpd_messages, images: zpd_images, names: zpd_names)),
                  );
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).scaffoldBackgroundColor),
                  shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  overlayColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Theme.of(context).scaffoldBackgroundColor;
                      }
                      return Colors.white;
                    },
                  ),
                  elevation: MaterialStateProperty.all<double>(0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/profilepic/zpd.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ZPD Officers 2024',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Montserrat',
                                  fontStyle: FontStyle.normal,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                'Officer Clawhauser: Cheif I\'ll...',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Montserrat',
                                  fontStyle: FontStyle.normal,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                          ]
                        ),
                      ],
                    ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen(chatName: 'Zootopic Animals', messages: friends_messages, images: friends_images, names: friends_names)),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).scaffoldBackgroundColor),
                  shape:
                  MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  overlayColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Theme.of(context).scaffoldBackgroundColor;
                      }
                      return Colors.white;
                    },
                  ),
                  elevation: MaterialStateProperty.all<double>(0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/profilepic/group.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Zootopic Animals',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              fontStyle: FontStyle.normal,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            'Priscilla: slower',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Montserrat',
                              fontStyle: FontStyle.normal,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen(chatName: 'Family Hopps (278)', messages: fam_messages, images: fam_images, names: fam_names)),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).scaffoldBackgroundColor),
                  shape:
                  MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  overlayColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Theme.of(context).scaffoldBackgroundColor;
                      }
                      return Colors.white;
                    },
                  ),
                  elevation: MaterialStateProperty.all<double>(0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/profilepic/family.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Family Hopps (278)',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              fontStyle: FontStyle.normal,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            'Sibling #107: Yay!',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Montserrat',
                              fontStyle: FontStyle.normal,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen(chatName: 'Dad I said no to iceing', messages: dad_messages, images: dad_images, names: dad_names)),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).scaffoldBackgroundColor),
                  shape:
                  MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  overlayColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Theme.of(context).scaffoldBackgroundColor;
                      }
                      return Colors.white;
                    },
                  ),
                  elevation: MaterialStateProperty.all<double>(0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/profilepic/mr-big.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dad I said no to iceing',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              fontStyle: FontStyle.normal,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            'Frubelina "Fru Fru" Big: Oh...',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Montserrat',
                              fontStyle: FontStyle.normal,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}