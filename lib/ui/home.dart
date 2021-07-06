import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app_ui/ui/cart/cart_page.dart';
import 'package:furniture_app_ui/ui/favorite/favorite_page.dart';
import 'package:furniture_app_ui/ui/home/home_page.dart';
import 'package:furniture_app_ui/ui/profile/profile_page.dart';
import 'package:furniture_app_ui/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  List<Widget> pages = [HomePage(), FavoritePage(), Cart(), ProfilePage()];

  //
  onItemTapped(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  onChanged(int selectedIndex) {
    pageController.jumpToPage(selectedIndex);
  }

  ///
  ///

  Widget activeIcon({IconData icon}) {
    return Container(
      height: 60.h,
      width: 60.w,
      decoration: BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
      child: Icon(
        icon,
        color: Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //theme
    var theme = Theme.of(context);
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: pages,
        onPageChanged: onItemTapped,
      ),
      bottomNavigationBar: ConvexAppBar(
        elevation: 0,
        onTap: onChanged,
        initialActiveIndex: selectedIndex,
        backgroundColor: theme.backgroundColor,
        style: TabStyle.flip,
        curveSize: 0,
        activeColor: theme.primaryColor,
        items: [
          TabItem(
              icon: Icon(
                Icons.home_outlined,
                size: iconSize,
                color: Colors.grey,
              ),
              activeIcon: activeIcon(icon: Icons.home_outlined)),
          TabItem(
              icon: Icon(
                Icons.star_border_outlined,
                size: iconSize,
                color: Colors.grey,
              ),
              activeIcon: activeIcon(
                icon: Icons.star_border_outlined,
              )),
          TabItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: iconSize,
                color: Colors.grey,
              ),
              activeIcon: activeIcon(
                icon: Icons.shopping_bag_outlined,
              )),
          TabItem(
              icon: Icon(
                Icons.person_outline,
                size: iconSize,
                color: Colors.grey,
              ),
              activeIcon: activeIcon(
                icon: Icons.person_outline,
              ))
        ],
      ),
    );
  }
}
