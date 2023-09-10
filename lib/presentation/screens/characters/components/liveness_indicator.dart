import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rick_and_morty/constants/colors.dart';

///Show liveness indicator
class LivenessIndicator extends StatefulWidget {
  ///Show liveness indicator
  const LivenessIndicator({required this.status, super.key});

  ///indicated wether character alive or died
  final String status;

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
      color = Colors.purpleAccent;
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
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          widget.status,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: color,
              ),
          overflow: TextOverflow.ellipsis,
          softWrap: false,
        ),
      ],
    );
  }
}
