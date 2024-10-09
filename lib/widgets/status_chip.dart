import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge_repo/constants/colors.dart';
import 'package:hubtel_coding_challenge_repo/constants/styles.dart';

Widget statusChip(BuildContext context, String status) {
  bool isSuccess = status.toLowerCase() == 'successful';
  Color backgroundColor =
      isSuccess ? AppColors.successBackground : AppColors.failedBackground;
  Color textColor =
      isSuccess ? AppColors.successTextColor : AppColors.failedTextColor;

  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: AppStyles.getResponsiveWidth(context, 8),
      vertical: AppStyles.getResponsiveHeight(context, 5),
    ),
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius:
          BorderRadius.circular(AppStyles.getResponsiveWidth(context, 12)),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          isSuccess ? Icons.check_circle : Icons.cancel,
          color: textColor,
          size: AppStyles.getResponsiveWidth(context, 12),
        ),
        SizedBox(width: AppStyles.getResponsiveWidth(context, 4)),
        Text(
          status,
          style: AppStyles.nunitoSansExtraboldSmall(
            context,
            color: textColor,
          ),
        ),
      ],
    ),
  );
}
