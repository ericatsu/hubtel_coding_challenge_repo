import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge_repo/constants/colors.dart';
import 'package:hubtel_coding_challenge_repo/constants/images.dart';
import 'package:hubtel_coding_challenge_repo/constants/styles.dart';
import 'package:hubtel_coding_challenge_repo/screens/home_screen.dart';
import 'package:hubtel_coding_challenge_repo/screens/send_screen.dart';
import 'package:hubtel_coding_challenge_repo/screens/history_screen.dart';
import 'package:hubtel_coding_challenge_repo/screens/schedule_screen.dart';
import 'package:hubtel_coding_challenge_repo/widgets/bottom_button.dart';
import 'package:hubtel_coding_challenge_repo/widgets/vertical_divider.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const SendScreen(),
    const HistoryScreen(),
    const ScheduleScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final double iconSize = AppStyles.iconSize(context);
    final double circleSize = AppStyles.circleSize(context);

    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: AppColors.cardBoarder, width: 1),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => setState(() => _currentIndex = 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: circleSize,
                          height: circleSize,
                          decoration: const BoxDecoration(
                            color: AppColors.homeBackground,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            AppImages().home,
                            width: iconSize,
                            height: iconSize,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const VerticalDividerWidget(),
                      ],
                    ),
                  ],
                ),
              ),
              BottomNavItem(
                label: "Send",
                imagePath: AppImages().send,
                currentIndex: _currentIndex,
                index: 1,
                iconSize: iconSize,
                onTap: () => setState(() => _currentIndex = 1),
              ),
              BottomNavItem(
                label: "History",
                imagePath: AppImages().history,
                currentIndex: _currentIndex,
                index: 2,
                iconSize: iconSize,
                onTap: () => setState(() => _currentIndex = 2),
              ),
              BottomNavItem(
                label: "Scheduled",
                imagePath: AppImages().schedule,
                currentIndex: _currentIndex,
                index: 3,
                iconSize: iconSize,
                onTap: () => setState(() => _currentIndex = 3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
