import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/widgets/tabbar_controller.dart';
import 'package:restaurant_delivery_app/utils/dimensions.dart';

import '../widgets/my_appbar.dart';
import './../utils/colors.dart';

// import './../data/dummy_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: AppColors.orangeColor,
          height: Dimensions.height50,
          color: AppColors.whiteColor,
          index: 2,
          items: <Widget>[
            Icon(
              Icons.heart_broken,
              color: AppColors.orangeColor,
              size: Dimensions.height40,
            ),
            Icon(
              Icons.history,
              color: AppColors.orangeColor,
              size: Dimensions.height30,
            ),
            Icon(
              Icons.home,
              color: AppColors.orangeColor,
              size: Dimensions.height30,
            ),
            Icon(
              Icons.shopify_rounded,
              color: AppColors.orangeColor,
              size: Dimensions.height30,
            ),
            Icon(
              Icons.location_history,
              color: AppColors.orangeColor,
              size: Dimensions.height30,
            ),
          ],
          onTap: (index) {
            //Handle button tap
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyAppbar(
                icon1: 'assets/images/menu1.svg',
                icon2: 'assets/images/notification.svg',
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.height25,
                    vertical: Dimensions.height05),
                child: Stack(
                  children: [
                    Container(
                      height: Dimensions.height150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.height30),
                        gradient: LinearGradient(
                          colors: [
                            AppColors.orangeColor,
                            Colors.pink,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: Dimensions.height10,
                            color: AppColors.orangeColor,
                            offset: Offset(0, Dimensions.height05),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      height: Dimensions.height150,
                      width: Dimensions.height200,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.height100),
                            bottomRight: Radius.circular(Dimensions.height30),
                            topRight: Radius.circular(Dimensions.height30),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: Dimensions.height20,
                              left: Dimensions.height20),
                          child: Image.network(
                            'https://purepng.com/public/uploads/large/burger-king-whopper-with-cheese-lxz.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: Dimensions.height20, top: Dimensions.height10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Shitaye Hotel',
                            style: AppColors.headLineStyle1,
                          ),
                          Text(
                            'Over 100+ branches',
                            style: AppColors.headLineStyle4.copyWith(
                              fontSize: Dimensions.height20,
                              color: AppColors.whiteColor,
                            ),
                          ),
                          SizedBox(
                            width: Dimensions.height150,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.whiteColor,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: AppColors.orangeColor,
                                    size: Dimensions.height25,
                                    semanticLabel: 'menu',
                                  ),
                                  Text(
                                    '  Location',
                                    style: AppColors.headLineStyle4.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: Dimensions.height15,
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Dimensions.height10,
                    horizontal: Dimensions.height20),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.height05,
                    vertical: Dimensions.height02, // 5 top and bottom
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(Dimensions.height10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      icon: Padding(
                        padding: EdgeInsets.only(left: Dimensions.height20),
                        child: Icon(
                          Icons.search,
                          color: AppColors.localBackgroundColor,
                          size: Dimensions.height25,
                        ),
                      ),
                      hintText: 'Search for a specific order',
                      hintStyle: AppColors.textStyle2.copyWith(
                        color: AppColors.localBackgroundColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.height20, top: Dimensions.height10),
                child: const TabbarController(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
