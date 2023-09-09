import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

/// Used to create data line in charcter card
class DataLine extends StatelessWidget {
  ///Creates data line in charcter card
  const DataLine({required this.title, required this.detail, super.key});

  ///Data tirle
  final String title;

  ///Data details
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
          overflow: TextOverflow.ellipsis,
          softWrap: false,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SizedBox(
            width: 210,
            child: AnimatedTextKit(
              isRepeatingAnimation: false,
              animatedTexts: [
                TypewriterAnimatedText(
                  detail,
                  curve: Curves.easeInCubic,
                  speed: const Duration(milliseconds: 100),
                  textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontStyle: FontStyle.italic,
                        overflow: TextOverflow.ellipsis,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
