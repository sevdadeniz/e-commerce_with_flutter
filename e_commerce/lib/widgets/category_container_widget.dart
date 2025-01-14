// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryContainerWidget extends StatefulWidget {
  String text;
  String imageUrl;
  final VoidCallback? onPressed;

  CategoryContainerWidget({
    Key? key,
    required this.text,
    required this.imageUrl,
    this.onPressed,
  }) : super(key: key);

  @override
  State<CategoryContainerWidget> createState() =>
      _CategoryContainerWidgetState();
}

class _CategoryContainerWidgetState extends State<CategoryContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(5.0.h),
      child: Column(
        children: [
          CircleAvatar(
            radius: 25.r,
            backgroundImage: AssetImage(widget.imageUrl),
          ),
          Text(widget.text)
        ],
      ),
    );
  }
}
