import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_ui/features/Homepage/widgets/card_item_wigets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarsouselWidget extends StatefulWidget {
  const CustomCarsouselWidget({super.key});

  @override
  State<CustomCarsouselWidget> createState() => _CustomCarsouselWidgetState();
}

class _CustomCarsouselWidgetState extends State<CustomCarsouselWidget> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 236.h,
            padEnds: false,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            onPageChanged: (index, reason) {
              setState(() {
                currentPage = index;
              });
            },
          ),
          items: [
            CardItemWigets(),
            CardItemWigets(),
            CardItemWigets(),
          ],
        ),

        const SizedBox(height: 16),
        DotsIndicator(
           dotsCount: 3,
            position: currentPage.clamp(0, 2).toDouble(), 
          decorator: DotsDecorator(
            spacing: EdgeInsets.zero,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
