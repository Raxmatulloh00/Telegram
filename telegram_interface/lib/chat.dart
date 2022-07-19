import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_interface/Bot.dart';
import 'package:telegram_interface/Channel.dart';
import 'package:telegram_interface/Group.dart';
import 'package:telegram_interface/Private.dart';
import 'package:telegram_interface/data.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 32, 30, 30),
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Color.fromARGB(255, 32, 30, 30),
          leading: const Icon(
            Icons.menu,
            size: 24,
            color: Colors.white,
          ),
          title: const Text(
            "Telegram",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          actions: const [
            Icon(
              Icons.search,
              size: 24,
              color: Colors.white,
            ),
            SizedBox(width: 15)
          ],
        ),
        body: DefaultTabController(
          length: 4,
          child: Column(
            children: const [
              TabBar(
                indicatorColor: Colors.green,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 5.0),
                labelColor: Colors.green,
                isScrollable: true,
                labelPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                labelStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Text("Private"),
                  Text("Group"),
                  Text("Channel"),
                  Text("Bots"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Private(),
                    Group(),
                    Channel(),
                    Bot(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
