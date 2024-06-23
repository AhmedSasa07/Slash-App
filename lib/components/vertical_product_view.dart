import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash2/components/vertical_product_card.dart';
import 'package:slash2/models/product_model.dart';

class vertical_product_card_view extends StatefulWidget {
  const vertical_product_card_view({super.key});

  @override
  State<vertical_product_card_view> createState() => _vertical_product_card_viewState();
}

class _vertical_product_card_viewState extends State<vertical_product_card_view> {

  PageController _pageController = PageController();
  List<productModel> bestSellingImagesList = [
    productModel(productTitle: "Stitch Keychain", productPrice: 55, productPicture: "assets/pics/bestSelling1.png"),
    productModel(productTitle: "Baby Girl Dress", productPrice: 230, productPicture: "assets/pics/dress.png"),
    productModel(productTitle: "Infant Hair", productPrice: 90, productPicture: "assets/pics/hair.png"),
    productModel(productTitle: "Stitch Keychain", productPrice: 55, productPicture: "assets/pics/bestSelling1.png"),
    productModel(productTitle: "Baby Girl Dress", productPrice: 230, productPicture: "assets/pics/dress.png"),
    productModel(productTitle: "Infant Hair", productPrice: 90, productPicture: "assets/pics/hair.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 166.h, // Adjust height to accommodate both image and text
      child: ListView.builder(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        itemCount: bestSellingImagesList.length,
        itemBuilder: (context, index) {
          return verticalProductCard(product: bestSellingImagesList[index]);
        },
      ),
    );
  }
}
