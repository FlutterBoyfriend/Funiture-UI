import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app_ui/models/extra_models.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  //
  int selectedIndex = 0;

  Widget buildContainer(
      {String text, Color bgColor, Color txtColor, Function onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(20)),
        height: 30.h,
        width: 120.w,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: txtColor, fontSize: 18.sp),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //theme
    var theme = Theme.of(context);
    return Container(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: allCategory.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(right: 40.w),
            child: buildContainer(
                onPressed: () {
                  selectedIndex = index;
                  setState(() {});
                },
                text: allCategory[index].name,
                bgColor: selectedIndex == index
                    ? theme.primaryColor
                    : Colors.blueGrey.withOpacity(0.1),
                txtColor: selectedIndex == index
                    ? theme.backgroundColor
                    : Colors.black),
          );
        },
      ),
    );
  }
}
