// File: lib/screens/homepage.dart

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool vegMode = false; // Added to track Veg Mode state

  List imageList = [
    "assets/images/image_2.jpg",
    "assets/images/image_3.jpg",
    "assets/images/image_4.jpg",
    "assets/images/image_5.jpg",
    "assets/images/image_6.jpg",
  ];
  List nameList = [
    "Healthy",
    "Home Style",
    "Pizza",
    "Chicken",
    "Biryani",
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
              // Header Section
Column(
                  children: [
                    // Location and Action Buttons Row
                    Row(
                      children: [
                        // Location Section
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                    size: 20.sp,
                                  ),
                                  SizedBox(width: 1.w),
                                  Text(
                                    "Home",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.black,
                                    size: 20.sp,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6.w),
                                child: Text(
                                  "navratna chowk purnea city, Purnia, ...",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 11.sp,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Right Side Buttons
                        Row(
                          children: [
                            // Wallet Button
                            Container(
                              height: 35.sp,
                              width: 35.sp,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.account_balance_wallet_outlined,
                                  color: Colors.black,
                                  size: 18.sp,
                                ),
                              ),
                            ),
                            SizedBox(width: 2.w),
                            // Money/Profile Button
                            Container(
                              height: 35.sp,
                              width: 35.sp,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.amber.shade100,
                              ),
                              child: Center(
                                child: Text(
                                  "S",
                                  style: TextStyle(
                                    color: Colors.amber.shade800,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h),
                    
                    // Search Bar and Veg Mode Row
                    Row(
                      children: [
                        // Search Bar
                        Expanded(
                          child: Container(
                            height: 6.h,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10.sp),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 3.w),
                                Icon(
                                  Icons.search,
                                  color: Colors.grey.shade600,
                                  size: 20.sp,
                                ),
                                SizedBox(width: 2.w),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Restaurant name or a d...",
                                      hintStyle: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 13.sp,
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.mic,
                                    color: Colors.grey.shade600,
                                    size: 20.sp,
                                  ),
                                  onPressed: () {
                                    // Handle voice search
                                  },
                                ),
                                SizedBox(width: 1.w),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 2.w),
                        // Veg Mode Toggle
                        Row(
                          children: [
                            Text(
                              "VEG\nMODE",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 9.sp,
                                fontWeight: FontWeight.bold,
                                height: 1.1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(width: 1.w),
                            Transform.scale(
                              scale: 0.8,
                              child: Switch(
                                value: vegMode,
                                onChanged: (value) {
                                  setState(() {
                                    vegMode = value;
                                  });
                                },
                                activeColor: Colors.green,
                                inactiveThumbColor: Colors.grey,
                                inactiveTrackColor: Colors.grey.shade300,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h),
                  ],
                ),
                
                // Promotional Banner - with error handling
                Container(
                  height: 20.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red.shade300,
                    borderRadius: BorderRadius.circular(15.sp),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.sp),
                    child: Image.asset(
                      "assets/images/Chatgpt.png",
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        // Fallback if image not found
                        return Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.red.shade400, Colors.red.shade600],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Up To\n70% OFF",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                  height: 1.1,
                                ),
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                "with free delivery",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                "no cooking\nJuly",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  height: 1.1,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 1.5.h),
                
                // Section Title
                Text(
                  "Eat What Makes You Happy",
                  style: TextStyle(
                    fontSize: 13.5.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 1.5.h),
                
                // Food Categories
                SizedBox(
                  height: 15.h,
                  child: ListView.builder(
                    itemCount: nameList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(right: 3.w),
                      child: Column(
                        children: [
                          Container(
                            height: 10.h,
                            width: 24.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade200,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.sp),
                              child: Image.asset(
                                imageList[index],
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  // Fallback colored circles if images not found
                                  List<Color> colors = [
                                    Colors.green.shade300,
                                    Colors.orange.shade300,
                                    Colors.red.shade300,
                                    Colors.amber.shade300,
                                    Colors.brown.shade300,
                                  ];
                                  return Container(
                                    decoration: BoxDecoration(
                                      color: colors[index % colors.length],
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      _getIconForCategory(index),
                                      color: Colors.white,
                                      size: 30.sp,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 0.5.h),
                          Text(
                            nameList[index],
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                
                // Restaurant count with Popular
                Row(
                  children: [
                    Text(
                      "127 restaurants around you",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 2.w,
                        vertical: 0.5.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.local_fire_department,
                            color: Colors.orange,
                            size: 16.sp,
                          ),
                          SizedBox(width: 1.w),
                          Text(
                            "Popular",
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                
                // Restaurant Cards Section
                _buildRestaurantCard(),
                SizedBox(height: 2.h),
              ],
            ),
          ),
        ),
      ),
      
// Bottom Navigation Bar - Replace the existing bottomNavigationBar with this:
bottomNavigationBar: Container(
  height: 8.h,
  decoration: BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.grey.shade300,
        offset: const Offset(0, -1),
        blurRadius: 5,
      ),
    ],
  ),
  child: Row(
    children: [
      // Delivery Tab
      Expanded(
        child: InkWell(
          onTap: () {
            // Handle delivery tab tap
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.red,
                  width: 3,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.delivery_dining,
                  color: Colors.red,
                  size: 22.sp,
                ),
                SizedBox(width: 1.5.w),
                Text(
                  "Delivery",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      
      // History Tab
      Expanded(
        child: InkWell(
          onTap: () {
            // Handle history tab tap
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.history,
                color: Colors.grey.shade600,
                size: 22.sp,
              ),
              SizedBox(width: 1.5.w),
              Text(
                "History",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
      
      // District Button
      Container(
        margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
        child: ElevatedButton(
          onPressed: () {
            // Handle district button tap
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF7C3AED), // Purple color similar to the image
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.sp),
            ),
            elevation: 0,
          ),
          child: Row(
            children: [
              Text(
                "district",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 1.w),
              Icon(
                Icons.arrow_outward,
                color: Colors.white,
                size: 16.sp,
              ),
            ],
          ),
        ),
      ),
    ],
  ),
),
    );
  }
  
  Widget _buildRestaurantCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 1.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.sp),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            offset: const Offset(0, 2),
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Restaurant Image with overlay elements
          Stack(
            children: [
              // Main Image
              Container(
                height: 22.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.sp),
                    topRight: Radius.circular(12.sp),
                  ),
                  color: Colors.grey.shade300,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.sp),
                    topRight: Radius.circular(12.sp),
                  ),
                  child: Image.asset(
                    "assets/images/image_8.jpg",
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.orange.shade200,
                        child: Center(
                          child: Icon(
                            Icons.restaurant,
                            size: 50.sp,
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              
              // Promoted Tag
              Positioned(
                top: 2.h,
                left: 2.w,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.sp),
                  ),
                  child: Text(
                    "Promoted",
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              
              // Bookmark Icon
              Positioned(
                top: 2.h,
                right: 2.w,
                child: Container(
                  padding: EdgeInsets.all(1.5.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.bookmark_border,
                    size: 18.sp,
                    color: Colors.black,
                  ),
                ),
              ),
              
              // Discount Tag
              Positioned(
                bottom: 2.h,
                left: 2.w,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5.sp),
                  ),
                  child: Text(
                    "70% OFF",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              
              // Delivery Time
              Positioned(
                bottom: 2.h,
                right: 2.w,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.sp),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.delivery_dining,
                        size: 14.sp,
                        color: Colors.black,
                      ),
                      SizedBox(width: 1.w),
                      Text(
                        "26 mins",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          
          // Restaurant Details
          Padding(
            padding: EdgeInsets.all(3.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sultan Kacchi Biryani",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 1.5.w, vertical: 0.3.h),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5.sp),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "4.3",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 12.sp,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0.5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Biryani, Desserts, Kacchi",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 11.sp,
                      ),
                    ),
                    Text(
                      "Price Range ₹250-₹550",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 11.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  IconData _getIconForCategory(int index) {
    List<IconData> icons = [
      Icons.eco,           // Healthy
      Icons.home,          // Home Style
      Icons.local_pizza,   // Pizza
      Icons.restaurant,    // Chicken
      Icons.rice_bowl,     // Biryani
    ];
    return icons[index % icons.length];
  }
}