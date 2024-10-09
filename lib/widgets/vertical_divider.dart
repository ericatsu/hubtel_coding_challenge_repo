import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge_repo/constants/colors.dart';

class VerticalDividerWidget extends StatelessWidget {
  const VerticalDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      width: 1,
      color: AppColors.cardBoarder,
    );
  }
}
