import 'package:flutter/material.dart';

class FaildStateWidget extends StatelessWidget {
  const FaildStateWidget({
    super.key,
    required this.messaage,
    required this.action,
  });

  final String messaage;
  final VoidCallback action;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            messaage,
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: action,
            child: const Text('Refresh'),
          ),
        ],
      ),
    );
  }
}
