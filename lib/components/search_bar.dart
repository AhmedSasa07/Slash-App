import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class searchBar extends StatelessWidget {
  const searchBar({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              width: width * .70,
              height: 55.h,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(228, 228, 228, 0.52),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.transparent),
              ),
              child: TextField(
                // Add functionality
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: const Color.fromRGBO(150, 150, 150, 1),
                  ),
                  labelText: 'Search here..',
                  border: InputBorder.none,
                  prefixIcon: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8),
                    child: SvgPicture.asset(
                      'assets/svgs/search.svg',
                    ),
                  ),
                  prefixIconConstraints: BoxConstraints(
                      minWidth: 45.w, minHeight: 45.h),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: 55.h,
            width: 55.w,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(228, 228, 228, 0.52),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.transparent),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/svgs/filter.svg',
                height: 25.h,
              ),
            ),
          ),
        ),
      ],
    );
  }
}