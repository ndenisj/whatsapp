// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/widgets/chat_list.dart';
import 'package:whatsapp/widgets/contacts_list.dart';
import 'package:whatsapp/widgets/web_chat_appbar.dart';
import 'package:whatsapp/widgets/web_profile_bar.dart';
import 'package:whatsapp/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          // Web screen
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                WebChatAppBar(),
                Expanded(
                  child: ChatList(),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: dividerColor),
                    ),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: searchBarColor,
                              hintText: 'Type a message',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              contentPadding: EdgeInsets.only(left: 20),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mic,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
