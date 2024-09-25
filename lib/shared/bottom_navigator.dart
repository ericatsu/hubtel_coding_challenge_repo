import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge_repo/constants/images.dart';
import 'package:hubtel_coding_challenge_repo/screens/home_screen.dart';
import 'package:hubtel_coding_challenge_repo/screens/send_screen.dart';
import 'package:hubtel_coding_challenge_repo/screens/history_screen.dart';
import 'package:hubtel_coding_challenge_repo/screens/schedule_screen.dart';
import 'package:hubtel_coding_challenge_repo/widgets/bottom_button.dart';

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
    final double iconSize = MediaQuery.of(context).size.width * 0.08;
    final double circleSize = MediaQuery.of(context).size.width * 0.12;

    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey.shade300, width: 1),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Home Icon (Retained Logic for Home)
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: circleSize,
                      height: circleSize,
                      decoration: BoxDecoration(
                        color: _currentIndex == 0
                            ? const Color(0xFFCCF3EF)
                            : Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        AppImages().home,
                        width: iconSize,
                        height: iconSize,
                      ),
                    ),
                  ],
                ),
              ),
              const VerticalDividerWidget(),

              BottomNavItem(
                label: "Send",
                imagePath: AppImages().send,
                index: 1,
                currentIndex: _currentIndex,
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                iconSize: iconSize,
              ),
              BottomNavItem(
                label: "History",
                imagePath: AppImages().history,
                index: 2,
                currentIndex: _currentIndex,
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                iconSize: iconSize,
              ),
              BottomNavItem(
                label: "Scheduled",
                imagePath: AppImages().schedule,
                index: 3,
                currentIndex: _currentIndex,
                onTap: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                },
                iconSize: iconSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerticalDividerWidget extends StatelessWidget {
  const VerticalDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.03,
      width: 1,
      color: Colors.grey.shade300,
    );
  }
}
