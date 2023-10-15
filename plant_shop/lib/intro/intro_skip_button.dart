import 'package:flutter/material.dart';

class IntroSkipButton extends StatelessWidget {
  final VoidCallback? onSkipPressed;

  const IntroSkipButton({Key? key, required this.onSkipPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20,
      right: 20,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Call the parent's callback function when tapped
            if (onSkipPressed != null) {
              onSkipPressed!();
            }
          },
          borderRadius: BorderRadius.circular(16.0),
          splashColor: Colors.blue.withAlpha(30),
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: const Text(
              'Skip',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
