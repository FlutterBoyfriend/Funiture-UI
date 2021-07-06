import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app_ui/models/cart_models.dart';
import 'package:furniture_app_ui/widgets/carted_widget.dart';

class CartProduct extends StatefulWidget {
  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flexible(
        child: ListView.builder(
          itemCount: allCarted.length,
          itemBuilder: (BuildContext context, int index) {
            return CartedWidget(
              image: allCarted[index].imgUrl,
              name: allCarted[index].name,
              price: allCarted[index].price,
            );
          },
        ),
      ),
    );
  }
}
