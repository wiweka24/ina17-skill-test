import 'package:flutter/material.dart';

class SequenceButtons extends StatelessWidget {
  final Function(int) onPressed;

  SequenceButtons({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () => onPressed(1),
                child: Text('Case 1'),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: ElevatedButton(
                onPressed: () => onPressed(2),
                child: Text('Case 2'),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () => onPressed(3),
                child: Text('Case 3'),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: ElevatedButton(
                onPressed: () => onPressed(4),
                child: Text('Case 4'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
