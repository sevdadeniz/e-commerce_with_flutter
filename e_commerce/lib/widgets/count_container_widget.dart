// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountContainerWidget extends StatelessWidget {
  String imageUrl;
  String salesRate;
  String title;
  CountContainerWidget({
    Key? key,
    required this.imageUrl,
    required this.salesRate,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
      child: Column(
        children: [
          Container(
            height: 140.h,
            width: 140.w,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.r),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(title),
          SizedBox(
            height: 5.h,
          ),
          InkWell(
            onTap: () {},
            child: Container(
                width: 78.w,
                height: 19.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xffEF4444),
                    borderRadius: BorderRadius.circular(2.r)),
                child: Text(
                  "UPTO %${salesRate} OFF",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 10.sp),
                )),
          )
        ],
      ),
    );
  }
}
