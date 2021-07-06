import 'package:flutter/material.dart';

//for selecting categories
class Category {
  final String name;

  Category({this.name});
}

Category category1 = Category(name: "Chair");
Category category2 = Category(name: "Bed");
Category category3 = Category(name: "Cupboard");

List<Category> allCategory = [category1, category2, category3];

//for product Colorssss
class ProductColor {
  final Color color;

  ProductColor({this.color});
}

ProductColor productColor1 = ProductColor(color: Colors.brown);
ProductColor productColor2 = ProductColor(color: Colors.red);
ProductColor productColor3 = ProductColor(color: Colors.blue[900]);

List<ProductColor> allColors = [productColor1, productColor2, productColor3];
