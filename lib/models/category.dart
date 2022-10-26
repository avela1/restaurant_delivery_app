import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final List<SubCategory> subCategories;
  final Color color;

  const Category({
    required this.id,
    required this.title,
    required this.subCategories,
    this.color = Colors.black,
  });
}

class SubCategory {
  final String id;
  final String title;
  const SubCategory({
    required this.id,
    required this.title,
  });
}
