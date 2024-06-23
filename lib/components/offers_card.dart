import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash2/models/offers_model.dart';

class offersCard extends StatelessWidget {
  offersCard({super.key, required this.offer});
  final offerModel offer;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: 330.w,
        height: 160.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(offer.offersImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
