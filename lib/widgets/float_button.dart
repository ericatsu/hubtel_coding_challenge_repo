import 'package:flutter/material.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Positioned(
      bottom: 20,
      left: (width / 2) - 75, 
      child: SizedBox(
        width: 150,
        height: 50,
        child: FloatingActionButton.extended(
          backgroundColor: const Color(0xFF00C1A2),
          onPressed: () {},
          label: const Text(
            'SEND NEW',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          icon: Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
              color: Colors.white, 
              shape: BoxShape.circle, 
            ),
            child: const Icon(
              Icons.add,
              size: 16,
              color: Color(0xFF00C1A2), 
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
