// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTitleWidget extends StatefulWidget {
  String title;
  final VoidCallback? onPressed;

  CustomTitleWidget({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  State<CustomTitleWidget> createState() => _CustomTitleWidgetState();
}

class _CustomTitleWidgetState extends State<CustomTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 10.w),
          child: Text(
            widget.title,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
        ),
        InkWell(
          onTap: widget.onPressed,
          child: const Row(
            children: [
              Text("Wiev all"),
              Icon(Icons.keyboard_arrow_right_outlined)
            ],
          ),
        ),
      ],
    );
  }
}
