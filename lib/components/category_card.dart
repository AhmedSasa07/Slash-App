import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../models/categories_model.dart';

class catagory_card extends StatelessWidget {
  const catagory_card({
    super.key,
    required this.category, required this.textColor, required this.backgroundColor, this.onTap,
  });

  final categoriesModel category;
  final Color textColor;
  final Color backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(

          children: [
            Container(
              width: 64.w,
              height: 64.h,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: backgroundColor,
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(100)
              ),
              child: Center(
                child: SvgPicture.asset(category.categorysvg,fit: BoxFit.fill,),
              ),
            ),
            SizedBox(height: 0.1.h,),
            SizedBox(
              child: Center(
                child: Text(
                  category.categoryTitle,
                  style: TextStyle(
                    color:textColor,
                    fontSize: 11.h,

                    fontWeight: FontWeight.w400,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              width: 55.w ,
            ),

          ],
        ),
      ),
    );
  }
}
