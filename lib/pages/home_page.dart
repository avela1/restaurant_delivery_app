import 'package:flutter/material.dart';

import './../utils/colors.dart';
import './../data/dummy_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Column(
          children: [
            Center(
              child: Text(
                'Shitaye Restorant',
                // style: GoogleFonts.abel(textStyle: AppColors.headLineStyle4),
                style: AppColors.headLineStyle1,
              ),
            ),
            Center(
              child: Text(
                'Found 6 Results',
                // style: GoogleFonts.abel(textStyle: AppColors.headLineStyle4),
                style: AppColors.headLineStyle2,
              ),
            ),
            Center(
              child: Text(
                'Gebeta Le Hager',
                // style: GoogleFonts.abel(textStyle: AppColors.headLineStyle4),
                style: AppColors.headLineStyle3,
              ),
            ),
            Center(
              child: Text(
                '1,900 Birr',
                // style: GoogleFonts.abel(textStyle: AppColors.headLineStyle4),
                style: AppColors.textStyle1,
              ),
            ),
            Center(
              child: Text(
                '1,900 Birr',
                // style: GoogleFonts.abel(textStyle: AppColors.headLineStyle4),
                style: AppColors.headLineStyle4,
              ),
            ),
            Center(
              child: Text(
                '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ''',
                // style: GoogleFonts.abel(textStyle: AppColors.headLineStyle4),
                style: AppColors.textStyle2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
