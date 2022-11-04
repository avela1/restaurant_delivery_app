import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/data/dummy_data.dart';
import 'package:restaurant_delivery_app/utils/colors.dart';
import 'package:restaurant_delivery_app/utils/dimensions.dart';
import 'package:restaurant_delivery_app/widgets/tabbar_item.dart';

class TabbarController extends StatefulWidget {
  const TabbarController({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TabbarControllerState createState() => _TabbarControllerState();
}

class _TabbarControllerState extends State<TabbarController> {
  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //   length: 7,
    //   child: Container(
    //     height: 150,
    //     child: Scaffold(
    //       appBar: AppBar(
    //         backgroundColor: AppColors.mainColor,
    //         title: TabBar(
    //           tabs: const <Widget>[
    //             Tab(
    //               child: Text(
    //                 'Food',
    //               ),
    //             ),
    //             Tab(
    //               child: Text(
    //                 'Drinks',
    //               ),
    //             ),
    //             Tab(
    //               child: Text(
    //                 'Souces',
    //               ),
    //             ),
    //             Tab(
    //               child: Text(
    //                 'Desert',
    //               ),
    //             ),
    //             Tab(
    //               child: Text(
    //                 'Desert',
    //               ),
    //             ),
    //             Tab(
    //               child: Text(
    //                 'Desert',
    //               ),
    //             ),
    //             Tab(
    //               child: Text(
    //                 'Desert',
    //               ),
    //             ),
    //           ],
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
    //       ),
    //       body: const TabBarView(
    //         children: [
    //           Center(child: Text('data1')),
    //           Center(child: Text('data2')),
    //           Center(child: Text('data3')),
    //           Center(child: Text('data4')),
    //           Center(child: Text('data5')),
    //           Center(child: Text('data6')),
    //           Center(child: Text('data7')),
    //         ],
    //       ),
    //     ),
    //   ),
    //   // TabBarView(children: [],)
    // );
    return DefaultTabController(
      length: DUMMY_CATEGORIES.length,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
            tabs: DUMMY_CATEGORIES.map((category) {
              return Tab(
                child: Text(category.title),
              );
            }).toList(),
            isScrollable: true,
            indicatorColor: AppColors.orangeColor,
            unselectedLabelStyle:
                AppColors.textStyle2.copyWith(fontSize: Dimensions.height15),
            unselectedLabelColor: AppColors.localBackgroundColor,
            labelStyle: AppColors.headLineStyle2
                .copyWith(fontSize: Dimensions.height20),
            labelColor: AppColors.orangeColor,
            indicatorWeight: Dimensions.height03,
            onTap: null,
          ),
          SizedBox(
            height: 500,
            child: TabBarView(
              children: DUMMY_CATEGORIES
                  .map((category) => TabbarItem(category: category))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
