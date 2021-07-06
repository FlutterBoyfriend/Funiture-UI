import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Rating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //theme
    var theme = Theme.of(context);
    return Container(
      height: 30.h,
      width: 100.w,
      child: Wrap(
        children: List<Widget>.generate(5, (int index) {
          return Icon(
            Icons.star,
            size: 20.sp,
            color: theme.primaryColor,
          );
        }),
      ),
    );
  }
}
