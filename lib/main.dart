import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Email App",
      theme: ThemeData(
          primarySwatch: Colors.green, accentColor: Colors.lightGreenAccent),
      home: EmailHome(title: "Email HomePage"),
    );
  }
}

class EmailHome extends StatelessWidget {
  final String title;

  final messages = const[
    "My First message",
    "My second message",
    "My third message",
    "My Fourth message",
    "My Fifth message",

  ];

  EmailHome({
    this.title
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("rhr"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemCount: messages.length,
        itemBuilder: (BuildContext context, int index) {
          var title = messages[index];
          return ListTile(
            title: Text(title),
            isThreeLine: true,
            leading: CircleAvatar(
              child: Text("EA"),
            ),
            subtitle: Text(
                "another text which is ver ver long and everyone can read it see it."),
          );
        },
      ),
    );
  }
}
