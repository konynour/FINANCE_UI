import 'package:finance_ui/core/styleling/app_corlors.dart';
import 'package:finance_ui/core/styleling/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticsScreen extends StatefulWidget {
  final String description;
  final String title;
  final IconData iconDate2;

  const StatisticsScreen({
    super.key,
    required this.description,
    required this.title,
    required this.iconDate2,
  });

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                // Back Button on the left
                Align(
                  alignment: Alignment.centerLeft,
                  child: const BackButton(),
                ),

                // Title in the center
                Center(
                  child: Text("Reload", style: AppStyles.black18BoldStyle),
                ),
                SizedBox(height: 20), // More icon on the right
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 48.w,
                    height: 48.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xffE3E9ED),
                        width: 1,
                      ),
                    ),
                    child: Icon(
                      Icons.more_horiz,
                      size: 24.sp,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.h),
            SizedBox(
              height: 236.h,
              width: double.infinity,
              child: BarChart(
                BarChartData(
                  titlesData: titlesData,
                  borderData: borderData,
                  barGroups: barGroups,
                  gridData: const FlGridData(show: true),
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 8,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Add your other widgets here if needed
          ],
        ),
      ),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 14.sp,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Jan';
        break;
      case 1:
        text = 'Feb';
        break;
      case 2:
        text = 'Mar';
        break;
      case 3:
        text = 'Apr';
        break;
      case 4:
        text = 'May';
        break; // Fixed typo from 'Jaun' to 'May'
      case 5:
        text = 'Jun';
        break; // Fixed typo from 'July' to 'Jun'
      case 6:
        text = 'Jul';
        break; // Fixed typo from 'Sn' to 'Jul'
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      space: 4,
      meta: meta,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
    show: true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 20.h,
        interval: 1,
        getTitlesWidget: getTitles,
      ),
    ),
    leftTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        interval: 2,
        reservedSize: 28.w,
        getTitlesWidget: (value, meta) {
          return Text(
            "${value.toInt()}k",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 12.sp,
            ),
          );
        },
      ),
    ),
    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
  );

  FlBorderData get borderData => FlBorderData(show: false);

  List<BarChartGroupData> get barGroups => [
    for (int i = 0; i < 7; i++) // Changed from 5 to 7 to match month count
      BarChartGroupData(
        x: i,
        barsSpace: 4.w,
        barRods: [
          BarChartRodData(
            toY: (i % 2 == 0) ? 4 : 6, // Varying heights for visual interest
            color: AppCorlors.primarycolor,
            width: 12.w,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8.r),
              topLeft: Radius.circular(8.r),
            ),
          ),
          BarChartRodData(
            toY: (i % 2 == 0) ? 3 : 2,
            color: const Color(0xff303A6E),
            width: 12.w,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8.r),
              topLeft: Radius.circular(8.r),
            ),
          ),
        ],
      ),
  ];
}
