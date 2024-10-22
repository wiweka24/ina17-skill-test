import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repositories/sequence_repository.dart';
import 'sequence_event.dart';
import 'sequence_state.dart';

class SequenceBloc extends Bloc<SequenceEvent, SequenceState> {
  final SequenceRepository repository;

  SequenceBloc(this.repository) : super(SequenceInitial()) {
    on<GenerateSequence>((event, emit) {
      int n = event.number;
      switch (event.type) {
        case 1:
          emit(SequenceResult(repository.generateSeries(n)));
          break;
        case 2:
          emit(SequenceResult(repository.generatePalindromeSeries(n)));
          break;
        case 3:
          emit(SequenceResult(repository.generateSpecialSeries(n)));
          break;
        case 4:
          emit(SequenceResult(repository.generateMultiplesSeries(n)));
          break;
      }
    });
  }
}
