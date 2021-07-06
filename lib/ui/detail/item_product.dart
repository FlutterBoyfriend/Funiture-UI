import 'package:flutter/material.dart';
import 'package:furniture_app_ui/ui/detail/components/detail_pro.dart';
import 'package:furniture_app_ui/ui/detail/components/price_cart.dart';
import 'package:furniture_app_ui/ui/detail/components/product_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app_ui/utils/constant.dart';
import 'package:furniture_app_ui/utils/helper.dart';
import 'package:furniture_app_ui/widgets/appbar_icon.dart';

class Product extends StatefulWidget {
  final String image;
  final String name;
  final String description;
  final String price;

  const Product({Key key, this.image, this.name, this.description, this.price})
      : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    //theme
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text("Detail", style: kAppBarTitle),
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
              icon: Icons.favorite_border_outlined,
            ),
          ),
        ],
      ),
      backgroundColor: theme.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        child: Column(children: [
          ProductImage(
            image: widget.image,
          ),
          SizedBox(height: 30.h),
          ProductDetail(
            name: widget.name,
            description: widget.description,
          ),
          Spacer(),
          ProductBottom(price: widget.price)
        ]),
      ),
    );
  }
}
