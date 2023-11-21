import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rick_and_morty/constants/colors.dart';

///Show liveness indicator
class LivenessIndicator extends StatefulWidget {
  ///Show liveness indicator
  const LivenessIndicator({
    required this.bigger,
    required this.status,
    super.key,
  });

  ///indicated wether character alive or died
  final String status;

  /// Display bigger size suitable for details screen
  final bool bigger;
  @override
  State<LivenessIndicator> createState() => _LivenessIndicatorState();
}

class _LivenessIndicatorState extends State<LivenessIndicator> {
  double target = 1;
  late Color color;
  late Timer timer;
  @override
  void initState() {
    super.initState();
    chooseColor();
  }

  void chooseColor() {
    if (widget.status == 'Alive') {
      color = AppColors.teal2;
      timer = Timer.periodic(
        const Duration(seconds: 1),
        (Timer t) {
          if (mounted) {
            setState(() {
              if (target == 1) {
                target = 0;
              } else {
                target = 1;
              }
            });
          }
        },
      );
    } else if (widget.status == 'Dead') {
      color = Colors.redAccent;
    } else {
      color = Colors.yellowAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedOpacity(
          opacity: target,
          duration: const Duration(milliseconds: 800),
          curve: Curves.fastEaseInToSlowEaseOut,
          child: Container(
            height: widget.bigger ? 11 : 7,
            width: widget.bigger ? 11 : 7,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: color,
                  blurRadius: 5,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: widget.bigger ? 10 : 3,
        ),
        Text(
          widget.status,
          style: widget.bigger
              ? Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: color,
                  shadows: [
                    Shadow(
                      blurRadius: 5,
                      color: color,
                    )
                  ],
                )
              : Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: color,
                  shadows: [
                    Shadow(
                      blurRadius: 5,
                      color: color,
                    )
                  ],
                ),
          overflow: TextOverflow.ellipsis,
          softWrap: false,
        ),
      ],
    );
  }
}
