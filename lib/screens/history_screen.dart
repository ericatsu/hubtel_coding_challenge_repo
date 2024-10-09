import 'package:flutter/material.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:hubtel_coding_challenge_repo/constants/colors.dart';
import 'package:hubtel_coding_challenge_repo/constants/styles.dart';
import 'package:hubtel_coding_challenge_repo/screens/history/history_list.dart';
import 'package:hubtel_coding_challenge_repo/screens/history/transaction_summary.dart';
import 'package:hubtel_coding_challenge_repo/widgets/float_button.dart';
import 'package:hubtel_coding_challenge_repo/widgets/top_bar.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int _currentSegment = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: AppStyles.getResponsiveHeight(context, 45),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
                child: CustomSlidingSegmentedControl<int>(
                  height: AppStyles.getResponsiveHeight(context, 35),
                  fixedWidth: AppStyles.getResponsiveWidth(context, 167),
                  children: {
                    0: Center(
                      child: Text(
                        'History',
                        style: AppStyles.nunitoSansExtraboldLarge(
                          context,
                          color: AppColors.textColor,
                        ),
                      ),
                    ),
                    1: Center(
                      child: Text(
                        'Transaction Summary',
                        style: AppStyles.nunitoSansRegularLarge(
                          context,
                          color: AppColors.textExtraLight,
                        ),
                      ),
                    ),
                  },
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  thumbDecoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onValueChanged: (index) {
                    setState(() {
                      _currentSegment = index;
                    });
                  },
                ),
              ),
              SizedBox(
                height: AppStyles.getResponsiveHeight(context, 5),
              ),
              const Divider(),
              SizedBox(
                height: AppStyles.getResponsiveHeight(context, 8),
              ),
              const TopBar(),
              SizedBox(
                height: AppStyles.getResponsiveHeight(context, 8),
              ),
              Expanded(
                child: _currentSegment == 0
                    ? const HistoryList()
                    : const TransactionSummary(),
              ),
            ],
          ),
          const FloatButton(),
        ],
      ),
    );
  }
}
