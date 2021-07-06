import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserAvatar extends StatelessWidget {
  final String imgUrl;

  const UserAvatar({Key key, this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.06,
      width: height * 0.06,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(imgUrl)),
          borderRadius: BorderRadius.circular(18.w)),
    );
  }
}
