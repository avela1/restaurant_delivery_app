import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/models/category.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';

class TabbarItem extends StatefulWidget {
  final Category category;
  const TabbarItem({Key? key, required this.category}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _TabbarItemState createState() => _TabbarItemState();
}

class _TabbarItemState extends State<TabbarItem> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //     length: widget.category.subCategories.length,
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: <Widget>[
    //         TabBar(
    //           tabs: widget.category.subCategories.map((subCategory) {
    //             return Tab(
    //               child: Card(
    //                 elevation: Dimensions.height05,
    //                 // child: SizedBox(
    //                 //   height: 150,
    //                 //   child: Column(
    //                 //     children: <Widget>[
    //                 //       const Icon(Icons.bug_report),
    //                 //       Text(subCategory.title),
    //                 //     ],
    //                 //   ),
    //                 // ),
    //               ),
    //             );
    //           }).toList(),
    //           isScrollable: true,
    //           indicatorColor: AppColors.orangeColor,
    //           unselectedLabelStyle:
    //               AppColors.textStyle2.copyWith(fontSize: Dimensions.height15),
    //           unselectedLabelColor: AppColors.localBackgroundColor,
    //           labelStyle: AppColors.headLineStyle2
    //               .copyWith(fontSize: Dimensions.height20),
    //           labelColor: AppColors.orangeColor,
    //           indicatorWeight: Dimensions.height03,
    //           onTap: null,
    //         ),
    //       ],
    //     ));

    return Container(
      margin: EdgeInsets.only(top: Dimensions.height20),
      width: double.infinity,
      height: double.infinity,
      child: Column(children: [
        SizedBox(
          height: Dimensions.height120,
          width: double.infinity,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: widget.category.subCategories.length,
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: (() {
                  setState(() {
                    _currentIndex = index;
                  });
                }),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  child: SizedBox(
                    width: Dimensions.height100,
                    height: Dimensions.height120,
                    child: Card(
                      color: index == _currentIndex
                          ? AppColors.orangeColor
                          : AppColors.whiteColor,
                      elevation: Dimensions.height05,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vectorstock.com%2Froyalty-free-vector%2Fburger-icon-hamburgercheeseburger-symbol-vector-23190089&psig=AOvVaw2Cph8rnxKFL8iOwpe3IF19&ust=1667050374016000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCOiEpduEg_sCFQAAAAAdAAAAABAE',
                            )
                          ]),
                    ),
                  ),
                ),
              );
            }),
          ),
        )
      ]),
    );
  }
}
