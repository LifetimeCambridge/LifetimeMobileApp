enum CellTestPhase { empty, testing, done }

class CellState {
  int slot;
  int capacity;
  int health;
  CellTestPhase testPhase;
  String time;
  CellState(
      {required this.slot,
      required this.capacity,
      required this.health,
      required this.testPhase,
      required this.time});
}
