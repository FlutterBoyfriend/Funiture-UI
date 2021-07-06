import 'package:flutter/material.dart';
import 'package:furniture_app_ui/models/chair_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app_ui/ui/detail/item_product.dart';
import 'package:furniture_app_ui/utils/constant.dart';
import 'package:furniture_app_ui/utils/helper.dart';

import 'package:furniture_app_ui/widgets/product_rating.dart';

class Chairs extends StatefulWidget {
  @override
  _ChairsState createState() => _ChairsState();
}

class _ChairsState extends State<Chairs> {
  int selectedIndex = 0;
  Widget buildTile({String imgurl, name, price}) {
    return Container(
        height: 200.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blueGrey.withOpacity(0.1)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            children: [
              buildProductImage(imgurl),
              SizedBox(width: 20.w),
              Container(
                height: 100.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(name, style: kProductStyle),
                    Text("Comfortable", style: kRegularStyle),
                    Rating(),
                    Text("\$ $price", style: kProductStyle)
                  ],
                ),
              )
            ],
          ),
        ));
  }

//Widgets productImage
  Container buildProductImage(String imgurl) {
    return Container(
      height: 180.h,
      width: 140.w,
      decoration: BoxDecoration(
          color: kBackGroundColor,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(imgurl))),
    );
  }
  //Widgets Product Rating

  @override
  Widget build(BuildContext context) {
    //theme
    var theme = Theme.of(context);
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: allChairs.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 5.w),
              child: GestureDetector(
                onTap: () {
                  Helper.nextScreen(
                      context,
                      Product(
                        image: allChairs[index].imgUrl,
                        name: allChairs[index].name,
                        price: allChairs[index].price,
                        description: allChairs[index].description,
                      ));
                },
                child: buildTile(
                    imgurl: allChairs[index].imgUrl,
                    name: allChairs[index].name,
                    price: allChairs[index].price),
              ),
            );
          },
        ),
      ),
    );
  }
}
