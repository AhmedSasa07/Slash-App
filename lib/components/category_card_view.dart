import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash2/components/category_card.dart';
import 'package:slash2/pages/home_page.dart';
import '../models/categories_model.dart';
class category_card_view extends StatefulWidget {
  const category_card_view({super.key});

  @override
  State<category_card_view> createState() => _category_card_viewState();
}

class _category_card_viewState extends State<category_card_view> {
  List<categoriesModel> categories = [
    categoriesModel(        categoryTitle: "Fashion",categorysvg: 'assets/svgs/shirt.svg'),
    categoriesModel(        categoryTitle: "Games",categorysvg: 'assets/svgs/games.svg'),
    categoriesModel(        categoryTitle: "Accessories",categorysvg: 'assets/svgs/accessories.svg'),
    categoriesModel(        categoryTitle: "Books",categorysvg: 'assets/svgs/books.svg'),
    categoriesModel(        categoryTitle: "Artifacts",categorysvg: 'assets/svgs/palette.svg'),
    categoriesModel(        categoryTitle: "Pets Care",categorysvg: 'assets/svgs/pinata.svg'),

  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 80.h,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return catagory_card(category: categories[index], textColor: HomePage.blackColor,backgroundColor: HomePage.blackColor,);
          }),
    );
  }
}
