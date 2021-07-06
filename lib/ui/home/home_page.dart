import 'package:flutter/material.dart';
import 'package:furniture_app_ui/ui/home/components/category.dart';
import 'package:furniture_app_ui/ui/home/components/chair_product.dart';
import 'package:furniture_app_ui/ui/home/components/search_bar.dart';
import 'package:furniture_app_ui/utils/constant.dart';
import 'package:furniture_app_ui/widgets/user_avatar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //theme
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: theme.backgroundColor,
        leading: IconButton(
          icon: Icon(Icons.sort),
          onPressed: () {
            //open drawer
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(5.w),
            child: UserAvatar(imgUrl: "images/user.jpeg"),
          )
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('''Choose Your Best 
Furniture ''', style: kBoldTitle),
              SizedBox(height: 8.h),
              Text(
                "high quality furniture",
                style: kRegularStyle,
              ),
              SizedBox(height: 25.h),
              SearchBar(),
              SizedBox(height: 25.h),
              Category(),
              Chairs()
            ],
          ),
        ),
      ),
    );
  }
}
