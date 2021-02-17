
import 'package:flutter/material.dart';
import 'package:flutter_whatsap_clone/model/chart_model.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: chatsdata.length,
      itemBuilder: (context,i)=>new Column(
        children: [
          new Divider(height: 0.1),
          new ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(chatsdata[i].pic),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new Text(
                  chatsdata[i].name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0
                  ),
                ),
                new Text(
                  chatsdata[i].time,
                  style: TextStyle(
                    fontSize: 11.0,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            subtitle: Text(
              chatsdata[i].msg,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0
              ),

            ),
          )
        ],
      ),
    );
  }
}
