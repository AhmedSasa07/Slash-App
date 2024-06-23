import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash2/pages/home_page.dart';

class customBtmNavbar extends StatefulWidget {
   customBtmNavbar({
    super.key,
    required this.size,
    required this.currentIndex,
    required this.svgIcons,
    required this.listOfLabels,
  });

  final Size size;
  int currentIndex;
  final List<String> svgIcons;
  final List<String> listOfLabels;

  @override
  State<customBtmNavbar> createState() => _customBtmNavbarState();
}

class _customBtmNavbarState extends State<customBtmNavbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(5),
        height: widget.size.height * .094,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(4, (index) {
            return InkWell(
              onTap: () {
                setState(() { // Update the state
                  widget.currentIndex = index; // Update the currentIndex variable
                });
              },

              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 1200),
                    curve: Curves.fastLinearToSlowEaseIn,
                    margin: EdgeInsets.only(
                      bottom: index == widget.currentIndex
                          ? 0
                          : widget.size.width * .029,
                      right: widget.size.width * .0422,
                      left: widget.size.width * .0422,
                    ),
                    width: widget.size.width * .128,
                    height:
                    index == widget.currentIndex ? widget.size.width * .014 : 0,
                    decoration: BoxDecoration(
                      color: HomePage
                          .blackColor, // Change indicator color to fontColor
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(10),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        widget.svgIcons[index],
                        width: widget.size.width *0.1,
                        ),
                      Text(
                        widget.listOfLabels[index],
                        style: TextStyle(
                          color: index == widget.currentIndex
                              ? HomePage.blackColor
                              : Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
