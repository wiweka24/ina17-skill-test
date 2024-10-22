import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/sequence/sequence_bloc.dart';
import '../../blocs/sequence/sequence_state.dart';

class SequenceResultDisplay extends StatelessWidget {
  SequenceResultDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SequenceBloc, SequenceState>(builder: (context, state) {
      if (state is SequenceResult) {
        return Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Result:',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                state.result,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        );
      }
      return Align(
        alignment: Alignment.topLeft,
        child: Text(
          'Input a number and press a button',
          style: TextStyle(fontSize: 18),
        ),
      );
    });
  }
}
