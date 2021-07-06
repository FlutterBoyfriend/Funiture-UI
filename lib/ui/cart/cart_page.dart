import 'package:flutter/material.dart';
import 'package:furniture_app_ui/ui/cart/components/bottom_sheet.dart';
import 'package:furniture_app_ui/ui/cart/components/cart_product.dart';
import 'package:furniture_app_ui/utils/constant.dart';
import 'package:furniture_app_ui/utils/helper.dart';
import 'package:furniture_app_ui/widgets/appbar_icon.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app_ui/widgets/primary_button.dart';

class Cart extends StatelessWidget {
  //open modal botoom sheet

  showModalSheet(BuildContext context) {
    return showModalBottomSheet(
        builder: (BuildContext context) {
          return Container(
            height: 350.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                )),
            child: SheetBottom(),
          );
        },
        context: context);
  }

  @override
  Widget build(BuildContext context) {
    //theme
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text("Cart", style: kAppBarTitle),
        leading: AppbarIcon(
          onPressed: () {
            //naviagte back
            Helper.popScreen(context);
          },
          icon: Icons.keyboard_arrow_left,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: AppbarIcon(
              onPressed: () {
                //add to favorite
              },
              icon: Icons.delete_outline,
            ),
          ),
        ],
      ),
      backgroundColor: theme.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          children: [
            CartProduct(),
            PrimaryButton(
              btnText: "Confirm",
              onPressed: () {
                //open sheetsss

                showModalSheet(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
