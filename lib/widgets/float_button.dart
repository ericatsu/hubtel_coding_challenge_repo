import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge_repo/constants/colors.dart';
import 'package:hubtel_coding_challenge_repo/constants/styles.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cardWidth = AppStyles.getResponsiveWidth(context, 345);
    return Positioned(
      bottom: 10,
      left: (cardWidth / 2) - 75,
      child: SizedBox(
        width: AppStyles.getResponsiveWidth(context, 150),
        height: AppStyles.getResponsiveHeight(context, 50),
        child: FloatingActionButton.extended(
          backgroundColor: AppColors.floatColor,
          onPressed: () {},
          label: Row(
            children: [
              Container(
                width: AppStyles.getResponsiveWidth(context, 25),
                height: AppStyles.getResponsiveWidth(context, 25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.add,
                  size: 20,
                  color: AppColors.floatColor,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'SEND NEW',
                style: AppStyles.float(
                  context,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
