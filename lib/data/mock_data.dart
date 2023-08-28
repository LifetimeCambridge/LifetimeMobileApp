import '../models/cell_state.dart';

class MockData {
  static List<CellState> activeTestsRunning = <CellState>[
    CellState(
        slot: 1,
        capacity: 0,
        health: 0,
        testPhase: CellTestPhase.testing,
        time: ''),
    CellState(
        slot: 2,
        capacity: 0,
        health: 0,
        testPhase: CellTestPhase.testing,
        time: ''),
    CellState(
        slot: 3,
        capacity: 0,
        health: 0,
        testPhase: CellTestPhase.testing,
        time: ''),
    CellState(
        slot: 4,
        capacity: 0,
        health: 0,
        testPhase: CellTestPhase.testing,
        time: ''),
    CellState(
        slot: 5,
        capacity: 0,
        health: 0,
        testPhase: CellTestPhase.testing,
        time: ''),
    CellState(
        slot: 6,
        capacity: 0,
        health: 0,
        testPhase: CellTestPhase.testing,
        time: ''),
    CellState(
        slot: 7,
        capacity: 0,
        health: 0,
        testPhase: CellTestPhase.testing,
        time: ''),
    CellState(
        slot: 8,
        capacity: 0,
        health: 0,
        testPhase: CellTestPhase.empty,
        time: '')
  ];

  static List<CellState> activeTestsDone = <CellState>[
    CellState(
        slot: 1,
        capacity: 2106,
        health: 81,
        testPhase: CellTestPhase.done,
        time: ''),
    CellState(
        slot: 2,
        capacity: 1690,
        health: 64,
        testPhase: CellTestPhase.done,
        time: ''),
    CellState(
        slot: 3,
        capacity: 1950,
        health: 75,
        testPhase: CellTestPhase.done,
        time: ''),
    CellState(
        slot: 4,
        capacity: 1508,
        health: 58,
        testPhase: CellTestPhase.done,
        time: ''),
    CellState(
        slot: 5,
        capacity: 728,
        health: 28,
        testPhase: CellTestPhase.done,
        time: ''),
    CellState(
        slot: 6,
        capacity: 1898,
        health: 73,
        testPhase: CellTestPhase.done,
        time: ''),
    CellState(
        slot: 7,
        capacity: 2262,
        health: 87,
        testPhase: CellTestPhase.done,
        time: ''),
    CellState(
        slot: 8,
        capacity: 0,
        health: 0,
        testPhase: CellTestPhase.empty,
        time: '')
  ];
}
