import 'package:flutter/material.dart';

class Connacted extends StatelessWidget {
  Connacted(this.title, this.subtitle, {Key? key}) : super(key: key);
  String title;
  String subtitle;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 32, 30, 30),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.amber,
                backgroundImage:
                    NetworkImage("https://source.unsplash.com/random/688"),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  const Text(
                    "yaqinda onlayn edi",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 133, 132, 132)),
                  ),
                ],
              )
            ],
          ),
          actions: [
            Row(
              children: const [
                Icon(
                  Icons.phone,
                  size: 26,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.more_vert_outlined,
                  size: 26,
                ),
                SizedBox(width: 10)
              ],
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(bottom: 10, right: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: Text(
                subtitle.toString(),
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 583.5),
              width: 500,
              height: 50,
              color: Color.fromARGB(255, 32, 30, 30),
              child: Row(children: const [
                SizedBox(width: 10),
                Icon(
                  Icons.gif_box_outlined,
                  size: 32,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text(
                  "Xabar",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 180),
                Icon(
                  Icons.attach_file_rounded,
                  color: Colors.grey,
                  size: 32,
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.mic_none_rounded,
                  color: Colors.grey,
                  size: 32,
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
