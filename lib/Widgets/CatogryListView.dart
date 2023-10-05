import 'package:flutter/material.dart';
import 'package:news/Widgets/catogry.dart';

import '../models/catogryModel.dart';

class CatogryListView extends StatelessWidget {
  const CatogryListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/business.jpg',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      categoryName: 'Sports',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      categoryName: 'General',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Catogrey(
              catogrey: categories[index],
            );
          }),
    );
  }
}
