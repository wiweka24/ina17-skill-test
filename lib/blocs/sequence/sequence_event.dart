abstract class SequenceEvent {}

class GenerateSequence extends SequenceEvent {
  final int number;
  final int type;

  GenerateSequence(this.number, this.type);
}
