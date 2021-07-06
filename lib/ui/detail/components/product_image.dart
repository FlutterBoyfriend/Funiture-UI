import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String image;

  const ProductImage({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 2.2,
      width: double.infinity,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(image))),
    );
  }
}
