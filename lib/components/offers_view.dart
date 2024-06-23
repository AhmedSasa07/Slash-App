import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:slash2/components/offers_card.dart';
import 'package:slash2/models/offers_model.dart';

class offers_list_view extends StatefulWidget {
  const offers_list_view({Key? key}) : super(key: key);

  @override
  _offers_list_viewState createState() => _offers_list_viewState();
}

class _offers_list_viewState extends State<offers_list_view> {
  List<offerModel> offersList = [
    offerModel(offersImage: 'assets/pics/offer1.png'),
    offerModel(offersImage: 'assets/pics/offers2.jpg'),
    offerModel(offersImage: 'assets/pics/offer1.png'),
    offerModel(offersImage: 'assets/pics/offers2.jpg'),
  ];

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          SizedBox(
            height: 120.h,
            child: PageView.builder(
              controller: _pageController,
              itemCount: offersList.length,
              itemBuilder: (context, index) {
                return offersCard(offer: offersList[index]);
              },
            ),
          ),
          SizedBox(height: 8.h),
          SmoothPageIndicator(
            controller: _pageController,
            count: offersList.length,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.black,
              dotColor: Colors.grey,
              dotWidth: 12.0.w,
              dotHeight: 10.0.h,
              expansionFactor: 2.0.w, // Adjust expansion factor for dots
              spacing: 4.w,
            ),
          ),
        ],
      ),
    );
  }
}
