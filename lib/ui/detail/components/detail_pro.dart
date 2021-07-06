import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app_ui/models/extra_models.dart';
import 'package:furniture_app_ui/utils/constant.dart';

class ProductDetail extends StatelessWidget {
  final String name;
  final String description;

  const ProductDetail({Key key, this.name, this.description}) : super(key: key);

  //class

  //build Widget
  Widget colorPicker() {
    return Container(
        height: 50.h,
        width: 200.w,
        alignment: Alignment.center,
        child: ListTile(
          leading: Text("Color",
              style: TextStyle(color: Colors.grey[900], fontSize: 18.sp)),
          title: Wrap(
              spacing: 10.w,
              children: List.generate(allColors.length, (int index) {
                return CircleAvatar(
                  radius: 12.sp,
                  backgroundColor: allColors[index].color,
                );
              })),
        ));
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: 220.h,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name,
              style: TextStyle(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.w500,
                  fontSize: 25.sp)),
          SizedBox(height: 20.h),
          Center(
            child: Text(
              description,
              style: TextStyle(
                  height: 1.5,
                  color: kAccentColor,
                  fontSize: 23.sp,
                  wordSpacing: 2.0),
            ),
          ),
          SizedBox(height: 30.h),
          colorPicker()
        ],
      ),
    );
  }
}
