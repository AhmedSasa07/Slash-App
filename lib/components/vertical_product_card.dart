import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash2/models/product_model.dart';
import 'package:slash2/pages/home_page.dart';

class verticalProductCard extends StatelessWidget {
  const verticalProductCard({super.key, required this.product});
  final productModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Pic+fav button
              Stack(children: [
                Container(
                  width: 124.w,
                  height: 116.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(product.productPicture),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                      height: 32.h,
                      width: 32.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromRGBO(228, 228, 228, 0.52),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/svgs/heart.svg',
                          height: 16.h,
                        ),
                      )),
                )
              ]),
              //Product Title
              Text(
                product.productTitle,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              //Product price + add button + button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\EGP ${product.productPrice}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  CircleAvatar(
                    foregroundImage: AssetImage("assets/pics/yarn.png"),
                    maxRadius: 10.r,
                  ),

                  GestureDetector(
                    child: Container(
                        height: 24.h,
                        width: 24.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HomePage.blackColor,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            height: 10.h,
                            'assets/svgs/add.svg',
                          ),
                        ),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
