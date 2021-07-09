import 'package:flutter/material.dart';
import 'package:furniture_app_ui/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app_ui/utils/helper.dart';
import 'package:furniture_app_ui/widgets/primary_button.dart';

class SheetBottom extends StatelessWidget {
  //build widget

  Widget customTile({String itemName, String price}) {
    return Container(
      height: 40.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            itemName,
            style: kProductStyle(),
          ),
          Text(
            price,
            style: kBottomStyle(),
          )
        ],
      ),
    );
  }

  Widget kCustomTile({String itemName, String price}) {
    return Container(
      height: 40.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(itemName, style: kBoldStyle()),
          Text(
            price,
            style: kBottomStyle(),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Selected Item",
            style: kBottomStyle(),
          ),
          SizedBox(height: 10.h),
          customTile(itemName: "Grey Chair", price: "\$7,89"),
          SizedBox(height: 10.h),
          customTile(itemName: "Laya Chair", price: "\$3,28"),
          SizedBox(height: 20.h),
          kCustomTile(itemName: "Total", price: "\$11,26"),
          SizedBox(height: 25.h),
          PrimaryButton(
            btnText: "Checkout",
            onPressed: () {
              Helper.popScreen(context);
            },
          )
        ],
      ),
    );
  }
//

  TextStyle kBottomStyle() {
    return TextStyle(
        color: kTextColor, fontSize: 20.sp, fontWeight: FontWeight.w600);
  }

  TextStyle kProductStyle() {
    return TextStyle(
        color: Colors.grey, fontSize: 20.sp, fontWeight: FontWeight.w600);
  }

  TextStyle kBoldStyle() {
    return TextStyle(
        color: kTextColor, fontSize: 20.sp, fontWeight: FontWeight.bold);
  }
}
