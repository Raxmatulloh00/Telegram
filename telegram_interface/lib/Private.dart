import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_interface/Connacted.dart';
import 'package:telegram_interface/data.dart';

class Private extends StatelessWidget {
  const Private({Key? key}) : super(key: key);

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
                    TelegramPrivateDatas().names[index],
                    Soz().soz[index],
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
              TelegramPrivateDatas().names[index].toString(),
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              Soz().soz[index].toString(),
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
      itemCount: 15,
    );
  }
}
