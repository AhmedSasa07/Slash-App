import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash2/components/appBar.dart';
import 'package:slash2/components/category_card_view.dart';
import 'package:slash2/components/custom_btm_nav_bar.dart';
import 'package:slash2/components/offers_view.dart';
import 'package:slash2/components/search_bar.dart';
import 'package:slash2/components/section_headings.dart';
import 'package:slash2/components/vertical_product_view.dart';
import 'package:slash2/models/categories_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const blackColor = Color(0xff292929);
  static const notificationColor = Color(0xffC12222);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List<categoriesModel> categories = [
    categoriesModel(        categoryTitle: "Fashion",categorysvg: 'assets/svgs/shirt.svg'),
    categoriesModel(        categoryTitle: "Games",categorysvg: 'assets/svgs/games.svg'),
    categoriesModel(        categoryTitle: "Accessories",categorysvg: 'assets/svgs/accessories.svg'),
    categoriesModel(        categoryTitle: "Books",categorysvg: 'assets/svgs/books.svg'),
    categoriesModel(        categoryTitle: "Artifacts",categorysvg: 'assets/svgs/palette.svg'),
    categoriesModel(        categoryTitle: "Pets Care",categorysvg: 'assets/svgs/pinata.svg'),

  ];
  List<String> svgIcons = [
    'assets/svgs/home-3-svgrepo-com.svg',
    'assets/svgs/heart.svg',
    'assets/svgs/cart.svg',
    'assets/svgs/profilesvg.svg',
  ];

  List<String> listOfLabels = [
    'Home',
    'Favorites',
    'My Cart',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.system,
            theme: ThemeData(
              fontFamily: "Urbanist",
            ),
            color: HomePage.blackColor,
            home: Scaffold(
              appBar: customAppbar(),
              body: CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 18.h,
                        ),
                        searchBar(width: width),
                        SizedBox(
                          height: 18.h,
                        ),
                    
                        //offers widget
                        offers_list_view(),
                    
                        SizedBox(
                          height: 9.h,
                        ),
                        sectionHeadings(
                            title: "Catagories",
                            color: HomePage.blackColor,
                            showActionButton: true),
                        category_card_view(),
                        sectionHeadings(
                            title: "Best Selling",
                            color: HomePage.blackColor,
                            showActionButton: true),
                       vertical_product_card_view(),
                        sectionHeadings(
                            title: "New Arrival",
                            color: HomePage.blackColor,
                            showActionButton: true),
                       vertical_product_card_view(),
                        sectionHeadings(
                            title: "Recommended for you",
                            color: HomePage.blackColor,
                            showActionButton: true),
                        vertical_product_card_view(),


                      ],
                    ),
                  ),
                ],
              ),
              bottomNavigationBar: customBtmNavbar(
                  size: size,
                  currentIndex: currentIndex,
                  svgIcons: svgIcons,
                  listOfLabels: listOfLabels),
            ));
      },
    );
  }
}



