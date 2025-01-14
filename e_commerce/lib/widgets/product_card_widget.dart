// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCardWidget extends StatefulWidget {
  String imageUrl;
  bool topSeller;
  String title;
  bool isFavorite;
  String count;
  String beforeCount;
  String rating;
  String peopleClick;
  ProductCardWidget({
    Key? key,
    required this.imageUrl,
    required this.topSeller,
    required this.title,
    required this.isFavorite,
    required this.count,
    required this.beforeCount,
    required this.rating,
    required this.peopleClick,
  }) : super(key: key);

  @override
  State<ProductCardWidget> createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      padding: EdgeInsets.only(bottom: 10.h),
      width: 148.w,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 104.h,
                width: 148.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.r),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.imageUrl),
                  ),
                ),
              ),
              Positioned(
                right: 3.w,
                top: 3.h,
                child: CircleAvatar(
                  radius: 15.r,
                  backgroundColor: Colors.white,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite; // Durumu tersine çevir
                      });
                    },
                    child: Icon(
                      isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      size: 20.sp,
                      color: isFavorite
                          ? Colors.red
                          : Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              widget.topSeller
                  ? Container(
                      padding: EdgeInsets.all(3.h),
                      margin: EdgeInsets.all(5.h),
                      decoration: BoxDecoration(
                          color: const Color(0xFFEA580C),
                          borderRadius: BorderRadius.circular(3)),
                      child: Text("Top Seller",
                          style:
                              TextStyle(color: Colors.white, fontSize: 10.sp)),
                    )
                  : Container()
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            widget.title,
            style: TextStyle(fontSize: 12.sp),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            children: [
              Text(
                "\$${widget.count}",
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                "\$${widget.beforeCount}",
                style: TextStyle(
                  fontSize: 10.sp,
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                "%15 OFF",
                style: TextStyle(fontSize: 10.sp, color: Colors.red),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 16.w,
                height: 16.h,
                decoration: BoxDecoration(
                  color: const Color(0xFFF59E0B),
                  borderRadius: BorderRadius.circular(3.r),
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.star,
                  size: 13.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                widget.rating,
                style: TextStyle(fontSize: 12.sp),
              ),
              SizedBox(
                width: 6.w,
              ),
              Text(
                "(${widget.peopleClick})",
                style: TextStyle(fontSize: 12.sp),
              )
            ],
          )
        ],
      ),
    );
  }
}
