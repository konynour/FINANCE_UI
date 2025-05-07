import 'package:finance_ui/core/styleling/wiget/spacing_widgets.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticsScreen extends StatefulWidget {
  StatisticsScreen({super.key});

  final Color leftBarColor = const Color(0xff617AFD);
  final Color rightBarColor = const Color(0xff303A6E);

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  final double width = 12.w;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();

    final barGroups = [
      makeGroupData(0, 5, 12),
      makeGroupData(1, 16, 12),
      makeGroupData(2, 18, 5),
      makeGroupData(3, 20, 16),
      makeGroupData(4, 17, 6),
      makeGroupData(5, 19, 1),
      makeGroupData(6, 10, 1),
    ];

    rawBarGroups = barGroups;
    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          heightspace(18),
          // ✅ Header Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const BackButton(),
              Text(
                "All Cards",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Container(
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
            ],
          ),
          heightspace(20),
          AspectRatio(
            aspectRatio: 1,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      makeTransactionsIcon(),
                      const SizedBox(width: 38),
                      const Text(
                        'Transactions',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        'state',
                        style: TextStyle(
                          color: Color(0xff77839a),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 38),
                  Expanded(
                    child: BarChart(
                      BarChartData(
                        maxY: 20,
                        barTouchData: BarTouchData(
                          touchTooltipData: BarTouchTooltipData(
                            getTooltipColor: (group) => Colors.grey,
                            getTooltipItem: (a, b, c, d) => null,
                          ),
                          touchCallback: (FlTouchEvent event, response) {
                            if (response == null || response.spot == null) {
                              setState(() {
                                touchedGroupIndex = -1;
                                showingBarGroups = List.of(rawBarGroups);
                              });
                              return;
                            }

                            touchedGroupIndex =
                                response.spot!.touchedBarGroupIndex;

                            setState(() {
                              if (!event.isInterestedForInteractions) {
                                touchedGroupIndex = -1;
                                showingBarGroups = List.of(rawBarGroups);
                                return;
                              }

                              showingBarGroups = List.of(rawBarGroups);
                            });
                          },
                        ),
                        titlesData: FlTitlesData(
                          show: true,
                          rightTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          topTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: bottomTitles,
                              reservedSize: 42,
                            ),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 28,
                              interval: 1,
                              getTitlesWidget: leftTitles,
                            ),
                          ),
                        ),
                        borderData: FlBorderData(show: false),
                        barGroups: showingBarGroups,
                        gridData: const FlGridData(show: true),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff7589a2),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );

    String text;
    if (value == 0) {
      text = '1K';
    } else if (value == 5) {
      text = '2K';
    } else if (value == 18) {
      text = '6K';
    } else if (value == 12) {
      text = '8K';
    } else {
      return Container();
    }

    return SideTitleWidget(
      meta: meta,
      space: 0,
      child: Text(text, style: style),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'];

    final Widget text = Text(
      titles[value.toInt()],
      style: const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );

    return SideTitleWidget(meta: meta, space: 16, child: text);
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(
          toY: y1,
          color: widget.leftBarColor,
          width: width,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.r),
            topLeft: Radius.circular(8.r),
          ),
        ),
        BarChartRodData(
          toY: y2,
          color: widget.rightBarColor,
          width: width,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.r),
            topLeft: Radius.circular(8.r),
          ),
        ),
      ],
    );
  }

  Widget makeTransactionsIcon() {
    const width = 4.5;
    const space = 3.5;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(width: width, height: 10, color: Colors.white.withOpacity(0.4)),
        const SizedBox(width: space),
        Container(width: width, height: 28, color: Colors.white.withOpacity(0.8)),
        const SizedBox(width: space),
        Container(width: width, height: 42, color: Colors.white),
        const SizedBox(width: space),
        Container(width: width, height: 28, color: Colors.white.withOpacity(0.8)),
        const SizedBox(width: space),
        Container(width: width, height: 10, color: Colors.white.withOpacity(0.4)),
      ],
    );
  }
}
