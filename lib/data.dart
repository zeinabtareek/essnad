import 'package:flutter/material.dart';

import 'constant.dart';
import 'model/chat_model/chat_model.dart';
import 'model/chat_model/chat_user.dart';


List<String> allItems = [
'Photos',
'Market',
'Posts',
'Photos',
'Market',

];
List<String> Images = [
'assets/images/GIANTMERT.png',
'assets/images/IMG_20191020_16.png',
'assets/images/IMG_20191019_19.png',
'assets/images/IMG_20191019_17.png',
'assets/images/received_613861.png',
'assets/images/siviwe-kapteyn-.png',
'assets/images/pexels-oliver-s.png',
  'assets/images/GIANTMERT.png',
];
List<String> ImageIcons = [
'assets/images/tvicon.png',
'assets/images/plane.png',
'assets/images/fast.png',
'assets/images/bagicon.png',
'assets/images/GIANTMERT.png',
];
List<String> data = [

  'كلمه المرور القديمه',
  'كلمه المرور ',
  'تأكيد كلمه المرور ',


];
List<ChatMessage> messages = [
  ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
  ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
  ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
  ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
  ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
];
   List<ChatUsers> chatUsers = [
    ChatUsers(name: "Jane Russel", messageText: "Awesome Setup", imageURL: "assets/images/user_image.png", time: "Now", ),
    ChatUsers(name: "Glady's Murphy", messageText: "That's Great", imageURL: "assets/images/user_image.png", time: "Yesterday"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "assets/images/user_image.png", time: "31 Mar"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "assets/images/user_image.png", time: "31 Mar"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "assets/images/user_image.png", time: "31 Mar"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "assets/images/user_image.png", time: "31 Mar"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "assets/images/user_image.png", time: "31 Mar"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "assets/images/user_image.png", time: "31 Mar"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "assets/images/user_image.png", time: "31 Mar"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "assets/images/user_image.png", time: "31 Mar"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "assets/images/user_image.png", time: "31 Mar"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "assets/images/user_image.png", time: "31 Mar"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "assets/images/user_image.png", time: "31 Mar"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "assets/images/user_image.png", time: "31 Mar"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "assets/images/user_image.png", time: "31 Mar"),
    ChatUsers(name: "Philip Fox", messageText: "Busy! Call me in 20 mins", imageURL: "assets/images/user_image.png", time: "28 Mar"),
    ChatUsers(name: "Debra Hawkins", messageText: "Thankyou, It's awesome", imageURL: "images/userImage5.jpeg", time: "23 Mar"),
    ChatUsers(name: "Jacob Pena", messageText: "will update you in evening", imageURL: "assets/images/user_image.png", time: "17 Mar"),
    ChatUsers(name: "Andrey Jones", messageText: "Can you please share the file?", imageURL: "images/userImage7.jpeg", time: "24 Feb"),
    ChatUsers(name: "John Wick", messageText: "How are you?", imageURL: "assets/images/user_image.png", time: "18 Feb"),
  ];
List colors = [Color(0xFFF8BF5F),Color(0xFF6AD451),Color(0xFF8134AF), Color(0xFF236FD2)];
