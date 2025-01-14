import 'package:e_commerce/screens/test_screen.dart';
import 'package:e_commerce/widgets/category_container_widget.dart';
import 'package:e_commerce/widgets/count_container_widget.dart';
import 'package:e_commerce/widgets/custom_title_widget.dart';
import 'package:e_commerce/widgets/icon_widget.dart';
import 'package:e_commerce/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: false,
        actions: [
          IconWidget(
            icon: Icons.notifications,
            onPressed: () {},
          ),
          IconWidget(
            icon: Icons.shopping_bag_outlined,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  hintText: "Search text",
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories"),
                InkWell(
                  child: Row(
                    children: [Text("Wiev all"), Icon(Icons.arrow_right)],
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryContainerWidget(
                  text: "Technology",
                  imageUrl: "assets/images/categories/1.png",
                ),
                CategoryContainerWidget(
                  text: "Technology",
                  imageUrl: "assets/images/categories/2.png",
                ),
                CategoryContainerWidget(
                  text: "Technology",
                  imageUrl: "assets/images/categories/3.png",
                ),
                CategoryContainerWidget(
                  text: "Technology",
                  imageUrl: "assets/images/categories/1.png",
                ),
                CategoryContainerWidget(
                  text: "Technology",
                  imageUrl: "assets/images/categories/1.png",
                ),
                CategoryContainerWidget(
                  text: "Technology",
                  imageUrl: "assets/images/categories/1.png",
                ),
                CategoryContainerWidget(
                  text: "Technology",
                  imageUrl: "assets/images/categories/1.png",
                ),
                CategoryContainerWidget(
                  text: "Technology",
                  imageUrl: "assets/images/categories/1.png",
                ),
                CategoryContainerWidget(
                  text: "Technology",
                  imageUrl: "assets/images/categories/1.png",
                ),
                CategoryContainerWidget(
                  text: "Technology",
                  imageUrl: "assets/images/categories/1.png",
                ),
                CategoryContainerWidget(
                  text: "Technology",
                  imageUrl: "assets/images/categories/1.png",
                ),
                CategoryContainerWidget(
                  text: "Technology",
                  imageUrl: "assets/images/categories/1.png",
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            height: 154,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "MIN %15 OFF",
                      style: TextStyle(fontSize: 20),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "SHOP NOW",
                          style: TextStyle(fontSize: 12),
                        ))
                  ],
                ),
                Flexible(
                    child: Image(image: AssetImage("assets/images/shoes.png")))
              ],
            ),
          ),
          Container(
            color: Color(0xffEBEDEE),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTitleWidget(
                  title: "Deal Of The Day",
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, bottom: 10.h),
                  child: AttendanceWidget(color: Color(0xFFEF4444)),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15.h,
                    right: 15.h,
                    bottom: 15.h,
                  ),
                  padding: EdgeInsets.only(top: 5.h),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CountContainerWidget(
                            imageUrl: "assets/images/1.png",
                            title: "Running Shoes",
                            salesRate: '24',
                          ),
                          CountContainerWidget(
                            imageUrl: "assets/images/2.png",
                            title: "Running Clocks",
                            salesRate: '30',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CountContainerWidget(
                            imageUrl: "assets/images/3.png",
                            title: "Running Shoes",
                            salesRate: '45',
                          ),
                          CountContainerWidget(
                            imageUrl: "assets/images/4.png",
                            title: "Running Shoes",
                            salesRate: '61',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CustomTitleWidget(
            title: "Hot Selling Footwear Title",
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ProductCardWidget(
                  imageUrl: "assets/products/image.png",
                  topSeller: true,
                  title: "Adidas white sneakers for men",
                  isFavorite: false,
                  count: '68',
                  beforeCount: '134',
                  rating: '4.5',
                  peopleClick: '489',
                ),
                ProductCardWidget(
                  imageUrl: "assets/products/image2.png",
                  topSeller: false,
                  title: "Adidas white sneakers for men",
                  isFavorite: false,
                  count: '68',
                  beforeCount: '134',
                  rating: '4.5',
                  peopleClick: '489',
                ),
                ProductCardWidget(
                  imageUrl: "assets/products/image.png",
                  topSeller: false,
                  title: "Adidas white sneakers for men",
                  isFavorite: false,
                  count: '68',
                  beforeCount: '134',
                  rating: '4.5',
                  peopleClick: '489',
                ),
                ProductCardWidget(
                  imageUrl: "assets/products/image2.png",
                  topSeller: false,
                  title: "Adidas white sneakers for men",
                  isFavorite: false,
                  count: '68',
                  beforeCount: '134',
                  rating: '4.5',
                  peopleClick: '489',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CustomTitleWidget(title: "Recommended For You"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ProductCardWidget(
                  imageUrl: "assets/products/image.png",
                  topSeller: true,
                  title: "Adidas white sneakers for men",
                  isFavorite: false,
                  count: '68',
                  beforeCount: '134',
                  rating: '4.5',
                  peopleClick: '489',
                ),
                ProductCardWidget(
                  imageUrl: "assets/products/image2.png",
                  topSeller: false,
                  title: "Adidas white sneakers for men",
                  isFavorite: false,
                  count: '68',
                  beforeCount: '134',
                  rating: '4.5',
                  peopleClick: '489',
                ),
                ProductCardWidget(
                  imageUrl: "assets/products/image.png",
                  topSeller: false,
                  title: "Adidas white sneakers for men",
                  isFavorite: false,
                  count: '68',
                  beforeCount: '134',
                  rating: '4.5',
                  peopleClick: '489',
                ),
                ProductCardWidget(
                  imageUrl: "assets/products/image2.png",
                  topSeller: false,
                  title: "Adidas white sneakers for men",
                  isFavorite: false,
                  count: '68',
                  beforeCount: '134',
                  rating: '4.5',
                  peopleClick: '489',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
