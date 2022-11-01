import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data/dummy_data.dart';
import './../../models/category.dart';
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
    List menuList = getMenu(widget.category.id, _currentIndex);
    return Container(
      margin: EdgeInsets.only(top: Dimensions.height20),
      width: double.infinity,
      height: double.infinity,
      child: Column(children: [
        SizedBox(
          height: Dimensions.height100,
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
                    width: Dimensions.height80,
                    height: Dimensions.height100,
                    child: Card(
                      color: index == _currentIndex
                          ? AppColors.orangeColor
                          : AppColors.whiteColor,
                      elevation: Dimensions.height05,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(Dimensions.height10),
                              child: SvgPicture.asset(
                                widget.category.subCategories[index].imgPath,
                                height: Dimensions.height40,
                                color: index == _currentIndex
                                    ? AppColors.whiteColor
                                    : AppColors.localBackgroundColor,
                              ),
                            ),
                            Text(
                              widget.category.subCategories[index].title,
                              style: AppColors.textStyle1.copyWith(
                                color: index == _currentIndex
                                    ? AppColors.whiteColor
                                    : AppColors.localBackgroundColor,
                                fontSize: Dimensions.height15,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              right: Dimensions.height20,
              top: Dimensions.height10,
            ),
            child: ListView.builder(
              itemCount: (menuList.length.toDouble()) ~/ 2,
              itemBuilder: ((_, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: Dimensions.height200,
                      height: Dimensions.height300,
                      margin: EdgeInsets.only(top: Dimensions.height10),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: Dimensions.height200,
                              height: Dimensions.height200,
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(Dimensions.height30),
                                  topRight:
                                      Radius.circular(Dimensions.height30),
                                  bottomLeft:
                                      Radius.circular(Dimensions.height10),
                                  bottomRight:
                                      Radius.circular(Dimensions.height10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.8),
                                    spreadRadius: 1,
                                    blurRadius: Dimensions.height05,
                                    offset: Offset(
                                      Dimensions.height03,
                                      Dimensions.height03,
                                    ), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(Dimensions.height15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      menuList[index].title,
                                      style: AppColors.textStyle1.copyWith(
                                        color: AppColors.blackColor,
                                        fontSize: Dimensions.height15,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Text(
                                      'It takes only ${menuList[index].duration} min top',
                                      style: AppColors.textStyle2.copyWith(
                                        fontSize: Dimensions.height15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: Dimensions.height10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Birr ${menuList[index].price.toString()}',
                                          style:
                                              AppColors.headLineStyle4.copyWith(
                                            fontSize: Dimensions.height15,
                                          ),
                                        ),
                                        SvgPicture.asset(
                                          'assets/images/tobefavorite.svg',
                                          height: Dimensions.height20,
                                          color: AppColors.orangeColor,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            child: Container(
                              width: Dimensions.height150,
                              height: Dimensions.height150,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.height150),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: Dimensions.height10,
                                    blurRadius: Dimensions.height05,
                                    offset: Offset(
                                      0,
                                      Dimensions.height02,
                                    ), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.network(
                                  menuList[index].imgUrl[0],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: Dimensions.height200,
                      height: Dimensions.height300,
                      margin: EdgeInsets.only(top: Dimensions.height10),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: Dimensions.height200,
                              height: Dimensions.height200,
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(Dimensions.height30),
                                  topRight:
                                      Radius.circular(Dimensions.height30),
                                  bottomLeft:
                                      Radius.circular(Dimensions.height10),
                                  bottomRight:
                                      Radius.circular(Dimensions.height10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.8),
                                    spreadRadius: 1,
                                    blurRadius: Dimensions.height05,
                                    offset: Offset(
                                      Dimensions.height03,
                                      Dimensions.height03,
                                    ), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(Dimensions.height15),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Cheddar-Stuffed Burgers',
                                        style: AppColors.textStyle1.copyWith(
                                          color: AppColors.blackColor,
                                          fontSize: Dimensions.height15,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Text(
                                        'It takes only 30 min top',
                                        style: AppColors.textStyle2.copyWith(
                                          fontSize: Dimensions.height15,
                                        ),
                                      ),
                                      SizedBox(
                                        height: Dimensions.height10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Birr 30',
                                            style: AppColors.headLineStyle4
                                                .copyWith(
                                              fontSize: Dimensions.height15,
                                            ),
                                          ),
                                          SvgPicture.asset(
                                            'assets/images/tobefavorite.svg',
                                            height: Dimensions.height20,
                                            color: AppColors.orangeColor,
                                          ),
                                        ],
                                      )
                                    ]),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            child: Container(
                              width: Dimensions.height150,
                              height: Dimensions.height150,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.height150),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: Dimensions.height10,
                                    blurRadius: Dimensions.height05,
                                    offset: Offset(
                                      0,
                                      Dimensions.height02,
                                    ), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.network(
                                  'https://purepng.com/public/uploads/large/purepng.com-burgerburger-food-941524644427c1mut.png',
                                  // 'https://purepng.com/public/uploads/large/purepng.com-burger-orientalsandwhichfoodbreadcaviarburgerdelicious-21526117500edrrq.png',
                                  // 'https://purepng.com/public/uploads/large/purepng.com-sparkling-wine-from-a-bottlealcoholdrinksparling-winesparling-win-in-a-bottlebottle-2315193398554j1hg.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ),
      ]),
    );
  }
}
