import 'package:finance_ui/core/styleling/app_assets.dart';
import 'package:finance_ui/core/styleling/app_corlors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllCardsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cards = [
    {
      'name': 'X-Card',
      'balance': '23400 EG',
      'lastFour': '3434',
      'expiry': '12/24',
    },
    {
      'name': 'X-Card',
      'balance': '3209 EG',
      'lastFour': '4545',
      'expiry': '12/24',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(cards.length, (index) {
        final card = cards[index];
        return Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: AppCorlors.primarycolor,
            child: Container(
              height: 180.h,
              child: Stack(
                children: [
                  // Decorations
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Image.asset(
                      AppAssets.Ellipse14,
                      width: 120.w,
                      height: 130.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      AppAssets.Ellipse14,
                      width: 120.w,
                      height: 130.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Image.asset(
                      AppAssets.Ellipse15,
                      width: 207.w,
                      height: 200.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      AppAssets.Ellipse15,
                      width: 207.w,
                      height: 200.h,
                      fit: BoxFit.fill,
                    ),
                  ),

                  // Card content
                  Positioned(
                    left: 16.w,
                    right: 16.w,
                    top: 16.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              card['name'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                              ),
                            ),
                            Text(
                              'VISA',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'Balance',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14.sp,
                          ),
                        ),
                        Text(
                          card['balance'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '**** ${card['lastFour']}',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16.sp,
                              ),
                            ),
                            Text(
                              card['expiry'],
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
