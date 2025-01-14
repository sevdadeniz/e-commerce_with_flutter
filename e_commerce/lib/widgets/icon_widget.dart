// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconWidget extends StatefulWidget {
  IconData icon;
  final VoidCallback? onPressed;

  IconWidget({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(widget.icon),
      onPressed: widget.onPressed,
    );
  }
}
