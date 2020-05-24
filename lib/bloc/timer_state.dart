import 'package:equatable/equatable.dart';

// Step 2: States: They can be:
// Ready — ready to start counting down from the specified duration.
// Running — actively counting down from the specified duration.
// Paused — paused at some remaining duration.
// Finished — completed with a remaining duration of 0.

// abstract class having only signatures.
abstract class TimerState extends Equatable {
  final int duration;

  const TimerState(this.duration);

  @override
  List<Object> get props => [duration];
}

// So here, every state is a class.
class Ready extends TimerState {
  const Ready(int duration) : super(duration);

  @override
  String toString() => 'Ready { duration: $duration }';
}

class Paused extends TimerState {
  const Paused(int duration) : super(duration);

  @override
  String toString() => 'Paused { duration: $duration }';
}

class Running extends TimerState {
  const Running(int duration) : super(duration);

  @override
  String toString() => 'Running { duration: $duration }';
}

class Finished extends TimerState {
  const Finished() : super(0);
}
