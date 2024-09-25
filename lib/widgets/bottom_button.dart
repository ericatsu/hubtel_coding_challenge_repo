import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final String label;
  final String imagePath;
  final int index;
  final int currentIndex;
  final Function onTap;
  final double iconSize;

  const BottomNavItem({
    Key? key,
    required this.label,
    required this.imagePath,
    required this.index,
    required this.currentIndex,
    required this.onTap,
    required this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(); 
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: iconSize,
            height: iconSize,
            color: currentIndex == index ? Colors.black : Colors.grey,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: currentIndex == index ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
