import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_interface/Connacted.dart';
import 'package:telegram_interface/data.dart';

class Group extends StatelessWidget {
  const Group({Key? key}) : super(key: key);

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
                  builder: (contaxt) => Connacted(
                      TelegramGroupDatas().names[index],
                      Groupsoz().groupsoz[index]),
                ),
              );
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              backgroundImage:
                  NetworkImage("https://source.unsplash.com/random/$index"),
              radius: 25,
            ),
            title: Text(
              TelegramGroupDatas().names[index].toString(),
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              Groupsoz().groupsoz[index].toString(),
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
      itemCount: 4,
    );
  }
}
