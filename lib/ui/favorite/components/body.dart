import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app_ui/utils/constant.dart';

class FavBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        emptyWidget(),
        SizedBox(height: 20.h),
        Text("No Favorites", style: kRegularStyle)
      ],
    );
  }

  emptyWidget() {
    return Center(
      child: Container(
        height: 250.h,
        width: 250.w,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/Sally-4.png"))),
      ),
    );
  }
}
