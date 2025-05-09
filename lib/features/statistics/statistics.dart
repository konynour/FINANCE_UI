import 'package:finance_ui/core/styleling/app_corlors.dart';
import 'package:finance_ui/core/styleling/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:finance_ui/core/styleling/back_button.dart' as custom;
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
            // Header
            Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: const custom.BackButton(),
                ),
                Center(
                  child: Text("Reload", style: AppStyles.black18BoldStyle),
                ),
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
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            // Date Range Selector
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 5.h,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Text(
                    "Jan 28 - May 28, 2025",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
                SizedBox(width: 45.w),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 1.h,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffB9C4FF),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: DropdownButton<String>(
                    value: "Monthly",
                    items:
                        <String>["Monthly", "Weekly", "Yearly"].map((
                          String value,
                        ) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 14.sp),
                            ),
                          );
                        }).toList(),
                    onChanged: (_) {},
                    underline: const SizedBox(),
                    icon: const Icon(Icons.arrow_drop_down),
                    dropdownColor: const Color(0xffB9C4FF),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            // Bar Chart
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

            SizedBox(height: 20.h),

            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16.sp,
              mainAxisSpacing: 8.sp,
              childAspectRatio: 1.5,
              children: [
                _buildStatCard(
                  value: "15000 EG",
                  title: "Income",
                  icon: Icons.trending_up,
                ),
                _buildStatCard(
                  value: "35000 EG",
                  title: "Outcome",
                  icon: Icons.trending_down,
                ),
              ],
            ),

            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard({
    required String title,
    required String value,
    required IconData icon,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: const Color(0xffECF1F6),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(icon, color: AppCorlors.primarycolor, size: 20.sp),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2.h),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
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
        break;
      case 5:
        text = 'Jun';
        break;
      case 6:
        text = 'Jul';
        break;
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
    for (int i = 0; i < 7; i++)
      BarChartGroupData(
        x: i,
        barsSpace: 4.w,
        barRods: [
          BarChartRodData(
            toY: (i % 2 == 0) ? 4 : 6,
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
