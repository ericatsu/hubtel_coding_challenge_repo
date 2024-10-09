import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge_repo/constants/colors.dart';
import 'package:hubtel_coding_challenge_repo/constants/images.dart';
import 'package:hubtel_coding_challenge_repo/constants/styles.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffe6eaed),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 0,),
              child: SizedBox(
                height: AppStyles.getResponsiveHeight(context, 40),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      AppImages().search,
                      height: AppStyles.getResponsiveHeight(context, 42),
                      width: AppStyles.getResponsiveWidth(context, 42),
                    ),
                    hintText: 'Search',
                    hintStyle: AppStyles.nunitoSansRegularLarge(
                      context,
                      color: AppColors.textLight,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Image.asset(AppImages().settings, color: Colors.black),
        ],
      ),
    );
  }
}
