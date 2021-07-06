import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app_ui/utils/constant.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //theme
    var theme = Theme.of(context);
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
          border: Border.all(color: theme.accentColor, width: 0.2),
          borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            // contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
            prefixIcon: Icon(
              Icons.search_outlined,
              color: Colors.grey,
            ),
            hintText: "Search",
            hintStyle: kRegularStyle,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
