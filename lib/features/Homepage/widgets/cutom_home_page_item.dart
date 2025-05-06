import 'package:finance_ui/core/styleling/app_corlors.dart';
import 'package:finance_ui/core/styleling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CutomHomePageItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String description;

  const CutomHomePageItem({
    super.key,
    required this.iconData,
    required this.description,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE3E9ED), width: 1),
        borderRadius: BorderRadiusDirectional.circular(16.r),
      ),
      child: Center(
        child: Column(
          children: [
            Container(
              width: 48.w ,
              height:48.w ,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffECF1F6),
                borderRadius: BorderRadius.circular(16.r)
              ),
              child: Icon(iconData,size:20.sp ,
              color: AppCorlors.primarycolor,
              ),
            ),
            const SizedBox(height:12 ),
            Text(title,style:AppStyles.black15BoldStyle),
                        const SizedBox(height:8 ),
                                    Text(description,style:AppStyles.grey12MeduimStyle),


          ],
        ),
      ),
    );
  }
}
