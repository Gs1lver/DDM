import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
          tileColor: Colors.green[100],
          title: Text(title),
          subtitle: Text(subtitle),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.phone)),
    );
  }
}
