import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_interface/Connacted.dart';
import 'package:telegram_interface/data.dart';

class Bot extends StatelessWidget {
  const Bot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Connacted(
                    TelegramBotsDatas().names[index],
                    Botsoz().soz[index],
                  ),
                ),
              );
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
              backgroundImage:
                  NetworkImage("https://source.unsplash.com/random/$index"),
              radius: 25,
            ),
            title: Text(
              TelegramBotsDatas().names[index].toString(),
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              Botsoz().soz[index].toString(),
              style: TextStyle(color: Colors.grey[800], fontSize: 14),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.5,
            indent: 50,
          ),
        ],
      ),
      itemCount: 5,
    );
  }
}
