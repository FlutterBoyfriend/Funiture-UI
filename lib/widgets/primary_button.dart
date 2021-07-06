import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final String btnText;
  final Function onPressed;

  const PrimaryButton({Key key, this.btnText, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);
    return GestureDetector(
      onTap: onPressed,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 65.h,
          width: 350.w,
          decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: Text(
              btnText,
              style: TextStyle(color: Colors.white, fontSize: 20.sp),
            ),
          ),
        ),
      ),
    );
  }
}
