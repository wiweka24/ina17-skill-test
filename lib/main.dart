import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/sequence/sequence_bloc.dart';
import 'repositories/sequence_repository.dart';
import 'ui/sequence/sequence_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => SequenceBloc(SequenceRepository()),
        child: SequencePage(),
      ),
    );
  }
}
