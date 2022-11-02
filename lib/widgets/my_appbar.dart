import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.height25, vertical: Dimensions.height15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: Dimensions.height40,
            height: Dimensions.height40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.height35),
                color: AppColors.whiteColor),
            child: Icon(
              Icons.menu,
              size: Dimensions.height30,
              semanticLabel: 'menu',
            ),
          ),
          Container(
            width: Dimensions.height40,
            height: Dimensions.height40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.height35),
                color: AppColors.whiteColor),
            child: Icon(
              Icons.notifications_none_rounded,
              size: Dimensions.height30,
              semanticLabel: 'notification',
            ),
          ),
        ],
      ),
    );
  }
}
