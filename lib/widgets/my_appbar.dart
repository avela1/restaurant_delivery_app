import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';

class MyAppbar extends StatelessWidget {
  final String icon1;
  final String icon2;
  const MyAppbar({
    Key? key,
    required this.icon1,
    required this.icon2,
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
            child: SvgPicture.asset(
              icon1,
              height: Dimensions.height30,
              width: Dimensions.height30,
            ),
          ),
          Container(
            width: Dimensions.height40,
            height: Dimensions.height40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.height35),
                color: AppColors.whiteColor),
            child: SvgPicture.asset(
              icon2,
              height: Dimensions.height30,
              width: Dimensions.height30,
            ),
          ),
        ],
      ),
    );
  }
}
