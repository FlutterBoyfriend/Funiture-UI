import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //theme
    var theme = Theme.of(context);
    return Container(
      height: 50.h,
      width: 120.w,
      decoration: BoxDecoration(
          color: theme.primaryColor, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          "Cart",
          style: TextStyle(fontSize: 20.sp, color: Colors.white),
        ),
      ),
    );
  }
}
