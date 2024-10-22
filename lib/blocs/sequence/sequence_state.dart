abstract class SequenceState {}

class SequenceInitial extends SequenceState {}

class SequenceResult extends SequenceState {
  final String result;

  SequenceResult(this.result);
}
