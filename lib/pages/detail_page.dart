import 'dart:math';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import './../data/dummy_data.dart';
import './../utils/dimensions.dart';
// import 'package:restaurant_delivery_app/utils/dimensions.dart';

import '../utils/colors.dart';

import './../models/category.dart';

import './../widgets/my_appbar.dart';

class DetailPage extends StatefulWidget {
  static const routeName = '/detail_page';
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as MealArguments;
    List item =
        getByID(arguments.category, arguments.subcategory, arguments.id);
    List<String> imgPath = item[0].imgUrl;
    List<Widget> generateImages() {
      return imgPath.map((itemImg) {
        return Center(
          child: Image.network(
            itemImg,
            fit: BoxFit.cover,
          ),
        );
      }).toList();
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyAppbar(
              icon1: 'assets/images/backarrow.svg',
              icon2: 'assets/images/heart.svg',
            ),
            SizedBox(
              height: Dimensions.height400,
              width: double.infinity,
              child: Column(
                children: [
                  CarouselSlider(
                    items: generateImages(),
                    options: CarouselOptions(
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 18 / 8,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgPath.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: Dimensions.height15,
                          height: Dimensions.height10,
                          margin: EdgeInsets.symmetric(
                            vertical: Dimensions.height25,
                            horizontal: Dimensions.height05,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white
                                    : Colors.black)
                                .withOpacity(_current == entry.key ? 0.9 : 0.4),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
