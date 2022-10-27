import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/utils/dimensions.dart';

import './../utils/colors.dart';

// import './../data/dummy_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.height25,
                  vertical: Dimensions.height15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Icon(
                    Icons.menu,
                    size: 34.0,
                    semanticLabel: 'menu',
                  ),
                  Icon(
                    Icons.notifications_none_rounded,
                    size: 34.0,
                    semanticLabel: 'notification',
                  ),
                ],
              ),
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
                      borderRadius: BorderRadius.circular(Dimensions.height30),
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
                        color: AppColors.localBackgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.height100),
                          bottomRight: Radius.circular(Dimensions.height30),
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
          ],
        ),
      ),
    );
  }
}
