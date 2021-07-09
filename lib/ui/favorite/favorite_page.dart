import 'package:flutter/material.dart';
import 'package:furniture_app_ui/ui/favorite/components/body.dart';
import 'package:furniture_app_ui/utils/constant.dart';
import 'package:furniture_app_ui/utils/helper.dart';
import 'package:furniture_app_ui/widgets/appbar_icon.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: AppbarIcon(
          onPressed: () {
            //naviagte back
            Helper.popScreen(context);
          },
          icon: Icons.keyboard_arrow_left,
        ),
        backgroundColor: theme.backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text("Favorite", style: kAppBarTitle),
      ),
      body: FavBody(),
    );
  }
}
