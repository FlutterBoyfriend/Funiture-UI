import 'package:flutter/material.dart';
import 'package:furniture_app_ui/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app_ui/widgets/add_cart.dart';

class ProductBottom extends StatelessWidget {
  final String price;

  const ProductBottom({Key key, this.price}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                  text: "\$",
                  style: TextStyle(color: kTextColor, fontSize: 20.sp),
                  children: [
                    TextSpan(
                        text: price,
                        style: TextStyle(
                            color: kTextColor,
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w500)),
                  ]),
            ),
            AddCartButton()
          ],
        ),
      ),
    );
  }
}
