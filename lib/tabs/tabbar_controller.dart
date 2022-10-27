import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/utils/colors.dart';
import 'package:restaurant_delivery_app/utils/dimensions.dart';

class TabbarController extends StatefulWidget {
  const TabbarController({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TabbarControllerState createState() => _TabbarControllerState();
}

class _TabbarControllerState extends State<TabbarController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            tabs: const <Widget>[
              Tab(
                child: Text(
                  'Food',
                ),
              ),
              Tab(
                child: Text(
                  'Drinks',
                ),
              ),
              Tab(
                child: Text(
                  'Souces',
                ),
              ),
              Tab(
                child: Text(
                  'Desert',
                ),
              ),
              Tab(
                child: Text(
                  'Desert',
                ),
              ),
            ],
            isScrollable: true,
            indicatorColor: AppColors.orangeColor,
            unselectedLabelStyle:
                AppColors.textStyle2.copyWith(fontSize: Dimensions.height15),
            unselectedLabelColor: AppColors.localBackgroundColor,
            labelStyle: AppColors.headLineStyle2
                .copyWith(fontSize: Dimensions.height20),
            labelColor: AppColors.orangeColor,
            indicatorWeight: Dimensions.height02,
            onTap: null,
          ),
        ),
        // body: const TabBarView(
        //   children: [
        //     Center(child: Text('data')),
        //     Center(child: Text('data')),
        //     Center(child: Text('data')),
        //     Center(child: Text('data')),
        //     Center(child: Text('data')),
        //   ],
      ),
      // TabBarView(children: [],)
    );
  }
}
