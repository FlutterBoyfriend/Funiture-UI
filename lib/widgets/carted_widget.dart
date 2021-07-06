import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app_ui/utils/constant.dart';

class CartedWidget extends StatefulWidget {
  final String image;
  final String name;
  final String price;

  const CartedWidget({Key key, this.image, this.name, this.price})
      : super(key: key);

  @override
  _CartedWidgetState createState() => _CartedWidgetState();
}

class _CartedWidgetState extends State<CartedWidget> {
  //build widgets

  Widget buildCartedItem({String image, String name, String price}) {
    return Row(
      children: [
        radioButton(),
        SizedBox(width: 40.w),
        cartedImage(image),
        SizedBox(width: 40.w),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: kProductStyle,
              ),
              SizedBox(height: 15.h),
              RichText(
                text: TextSpan(
                    text: "\$",
                    style: TextStyle(color: kTextColor, fontSize: 15.sp),
                    children: [
                      TextSpan(
                          text: price,
                          style: TextStyle(
                              color: kTextColor,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500)),
                    ]),
              ),
              _buildQuantityControl()
            ],
          ),
        )
      ],
    );
  }

  Container cartedImage(String image) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Color(0xffF0ECEB),
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage(image),
          )),
    );
  }

  Container radioButton() {
    return Container(
      height: 150.h,
      width: 20.w,
      child: Center(
        child: Radio(
          onChanged: (value) {},
          groupValue: 0,
          value: 0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          height: 120.h,
          width: double.infinity,
          child: buildCartedItem(
              image: widget.image, name: widget.name, price: widget.price)),
    );
  }

  _buildQuantityControl() {
    return Container(
      height: 50.h,
      width: 120.w,
      child: Row(
        children: [
          Container(
            height: 25.h,
            width: 25.w,
            decoration:
                BoxDecoration(color: Color(0xffF0ECEB), shape: BoxShape.circle),
            child: Center(
              child: Text(
                "-",
                style: TextStyle(color: Colors.black, fontSize: 25.sp),
              ),
            ),
          ),
          SizedBox(width: 15.w),
          Text(
            "1",
            style: TextStyle(
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500),
          ),
          IconButton(
            icon: Icon(
              Icons.add_circle,
              color: Color(0xff494A7B),
            ),
            onPressed: () {
              //increment counter
            },
          ),
        ],
      ),
    );
  }
}

//
