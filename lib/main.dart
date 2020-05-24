import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

MyApp() {}

// Step 1: Data Repository - Create stream of ticks emitted every second
class Ticker {
  Stream<int> tick({int ticks}) {
    return Stream.periodic(Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }
}

// Step 2: States: They can be:
// Ready — ready to start counting down from the specified duration.
// Running — actively counting down from the specified duration.
// Paused — paused at some remaining duration.
// Finished — completed with a remaining duration of 0.

