import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarIcon extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  const AppbarIcon({Key key, this.icon, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //theme
    var theme = Theme.of(context);
    //mediaquery
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(10.h),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          height: height * 0.05,
          width: height * 0.05,
          decoration: BoxDecoration(
              border: Border.all(color: theme.accentColor, width: 0.4),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Icon(
              icon,
              size: 25.sp,
            ),
          ),
        ),
      ),
    );
  }
}
