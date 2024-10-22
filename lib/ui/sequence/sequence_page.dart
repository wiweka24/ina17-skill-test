import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/sequence/sequence_bloc.dart';
import '../../blocs/sequence/sequence_event.dart';
import 'sequence_buttons.dart';
import 'sequence_result.dart';

class SequencePage extends StatelessWidget {
  SequencePage({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final sequenceBloc = BlocProvider.of<SequenceBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Ina 17 Skill Test')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Input a number (N)'),
            ),
            SizedBox(height: 20),
            SequenceButtons(
              onPressed: (type) {
                int number = int.tryParse(_controller.text) ?? 0;
                sequenceBloc.add(GenerateSequence(number, type));
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: SequenceResultDisplay(),
            ),
          ],
        ),
      ),
    );
  }
}
