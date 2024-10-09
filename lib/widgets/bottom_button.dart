import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hubtel_coding_challenge_repo/constants/colors.dart';

class BottomNavItem extends StatelessWidget {
  final String label;
  final String imagePath;
  final int index;
  final int currentIndex;
  final Function onTap;
  final double iconSize;

  const BottomNavItem({
    super.key,
    required this.label,
    required this.imagePath,
    required this.index,
    required this.currentIndex,
    required this.onTap,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: iconSize,
            height: iconSize,
            color: currentIndex == index
                ? AppColors.textColor
                : AppColors.labelColor,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: GoogleFonts.nunitoSans(
              fontWeight: currentIndex == index ? FontWeight.w900 : FontWeight.normal,
              color: currentIndex == index
                  ? AppColors.textColor
                  : AppColors.labelColor,
             fontSize: 13
            ),
          ),
        ],
      ),
    );
  }
}
