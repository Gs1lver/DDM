import 'package:flutter/material.dart';

class CustomTile extends StatefulWidget {
  CustomTile({super.key, required this.title, required this.subtitle, required this.leading, required this.trailing});

  String title;
  String subtitle;
  Icon leading;
  Icon trailing;

  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      subtitle: Text("RA: ${widget.subtitle}"),
      leading: widget.leading,
      trailing: widget.trailing,

    );
  }
}