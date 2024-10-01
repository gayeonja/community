import 'dart:core';
import 'package:flutter/cupertino.dart';

class Group {
  final String groupName;
  final List<String> writers;
  final List<String> writersImages;
  final List<String> images;
  final List<String> captions;
  final List<List<String>> commentWriters;
  final List<List<String>> comments;
  final List<List<String>> commentPhotos;

  Group({required this.groupName, required this.writers, required this.images, required this.writersImages, required this.captions, required this.commentPhotos, required this.commentWriters, required this.comments});
}

List<String> zpdWriters = ["Chief Bogo", "Chief Bogo", 'Chief Bogo', "Chief Bogo", "Chief Bogo"];
List<String> zpdWritersImages = ["cheifbogo.jpg", "cheifbogo.jpg", 'cheifbogo.jpg', "cheifbogo.jpg", "cheifbogo.jpg"];
List<String> zpdImages = ["schedule2.png", "police_schedule.png", 'first_fox.png', "arrested.jpg", "first_bunny.png",];
List<String> zpdCaptions = ["Night shift for the next 6 weeks.", "Night shift for the next 6 weeks.", 'Please welcome our first fox!', "Good work team!", "Please welcome our first bunny!"];
List<List<String>> zpdCommentsWriters = [
  ["Judy Hopps", "Nick Wilde"],
  ["Chief Bogo", "Chief Bogo", "Nick Wilde", "Judy Hopps"],
  ["Judy Hopps", "Nick Wilde"],
  ["Officer Clawhauser"],
  ["Officer Clawhauser"]
];
List<List<String>> zpdComments = [
  ["Thank you Chief!", "He really just flipped the two shift times and changed the colors..."],
  ["Squad 1: Hopps, Fangmeyer, Higgins", "Squad 2: Wilde, Clawhauser, Wolfard", "Hopps! Parking Duty!", "Nick, Really?"],
  ["Welcome!", "This is such a warm welcome."],
  ["Thank you Judy for getting my favorite job back!"],
  ["Oh my gosh! They actually hired a bunny!"]
];
List<List<String>> zpdCommentPhotos = [
  ['judy.jpg', 'nick.JPG'],
  ['cheifbogo.jpg', 'cheifbogo.jpg', 'nick.JPG', 'judy.jpg'],
  ['judy.jpg', 'nick.JPG'],
  ['OfficerClawhauser.jpg'],
  ['OfficerClawhauser.jpg']
];
Group zpd2024 = Group(groupName: "ZPD Officers 2024", writers: zpdWriters, images: zpdImages,
    writersImages: zpdWritersImages, commentPhotos: zpdCommentPhotos, captions: zpdCaptions,
    commentWriters: zpdCommentsWriters, comments: zpdComments);

List<String> zootopicWriters = ["Nick Wilde"];
List<String> zootopicdWritersImages = ["nick.JPG"];
List<String> zootopicImages = ["speeding.png"];
List<String> zootopicCaptions = ["Flash Flash Hundred Yard Dash"];
List<List<String>> zootopicCommentsWriters = [
  ["Priscilla Tripletoe"],
];
List<List<String>> zootopicComments = [
  ["Come on, Flash."],
];
List<List<String>> zootopicCommentPhotos = [
  ["priscilla.jpg"],
];
Group zootopic = Group(groupName: "Zootopic Animals",
    writers: zootopicWriters, images: zootopicImages, writersImages: zootopicdWritersImages,
    commentPhotos: zootopicCommentPhotos, captions: zootopicCaptions, commentWriters: zootopicCommentsWriters,
    comments: zootopicComments);

List<String> familyWriters = ["Judy Hopps", "Judy Hopps"];
List<String> familyWritersImages = ["judy.jpg", "judy.jpg"];
List<String> familyImages = ["speech.png", "parkingduty.png"];
List<String> familyCaptions = ["What an honor to speak at the Police Academy Commencement!", "Done with my first day at work!"];
List<List<String>> familyCommentsWriters = [
  ["Bonnie Hopps", "Stu Hopps"],
  ["Bonnie Hopps", "Stu Hopps"],
];
List<List<String>> familyComments = [
  ["I'm so proud of you, Judy!", "My daughter is so mature now."],
  ["Judy! Are you a meter maid? It's the safest job on the force!", "Oh! She's not a real cop! Our prayers have been answered!"],
];
List<List<String>> familyCommentPhotos = [
  ['bonnie_hopps.png', 'stu_hopps.png'],
  ['bonnie_hopps.png', 'stu_hopps.png'],
];
Group family = Group(groupName: "Family Hopps (278)",
    writers: familyWriters, images: familyImages, writersImages: familyWritersImages,
    commentPhotos: familyCommentPhotos, captions: familyCaptions, commentWriters: familyCommentsWriters,
    comments: familyComments);

List<String> dadWriters = ["Mr. Big", "Mr. Big"];
List<String> dadWritersImages = ["mr-big.jpg", "mr-big.jpg"];
List<String> dadImages = ["weaselton.png", "wedding.png"];
List<String> dadCaptions = ["Judy, what do I do with this weasel?", "My beautiful daughter!"];
List<List<String>> dadCommentsWriters = [
  ["Nick Wilde", "Judy Hopps", "Judy Hopps"],
  ["Judy Hopps"],
];
List<List<String>> dadComments = [
  ["Ice him!", "No Nick!", "Can you send him over to the station?"],
  ["Aww! So wholesome!"]
];
List<List<String>> dadCommentPhotos = [
  ["nick.JPG", "judy.jpg", "judy.jpg"],
  ["judy.jpg"]
];
Group dad = Group(groupName: "Dad I said no iceing",
    writers: dadWriters, images: dadImages, writersImages: dadWritersImages,
    commentPhotos: dadCommentPhotos, captions: dadCaptions, commentWriters: dadCommentsWriters,
    comments: dadComments);