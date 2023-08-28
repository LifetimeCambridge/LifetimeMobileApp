import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../models/cell_state.dart';

class ActiveTestsPage extends StatefulWidget {
  const ActiveTestsPage({super.key});

  @override
  State<ActiveTestsPage> createState() => _ActiveTestsPageState();
}

class _ActiveTestsPageState extends State<ActiveTestsPage> {
  List<CellState> testSet = MockData.activeTestsRunning;

  String getCellImagePath(CellState cellState) {
    switch (cellState.testPhase) {
      case CellTestPhase.empty:
        return 'assets/images/cell_empty.png';
      case CellTestPhase.testing:
        return 'assets/images/cell_testing.png';
      case CellTestPhase.done:
        var iconIndex = 2;
        if (cellState.health >= 80) {
          iconIndex = 6;
        } else if (cellState.health >= 70) {
          iconIndex = 5;
        } else if (cellState.health >= 60) {
          iconIndex = 4;
        } else if (cellState.health >= 50) {
          iconIndex = 3;
        }
        return 'assets/images/cell_done_$iconIndex.png';
    }
  }

  String getCellHeadline(CellState cellState) {
    switch (cellState.testPhase) {
      case CellTestPhase.empty:
      case CellTestPhase.testing:
        return 'Slot ${cellState.slot}';
      case CellTestPhase.done:
        return 'Cell ${cellState.slot} health: ${cellState.health}%';
    }
  }

  String getCellDescription(CellState cellState) {
    switch (cellState.testPhase) {
      case CellTestPhase.empty:
        return 'Empty';
      case CellTestPhase.testing:
        return 'Testing in progress';
      case CellTestPhase.done:
        return 'Capacity: ${cellState.capacity} mAh';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemCount: testSet.length,
        itemBuilder: (ctx, i) {
          return Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.fromLTRB(4, 4, 4, 4),
            child: Container(
              height: 150,
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(0),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(getCellImagePath(testSet[i])),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          8,
                          8,
                          8,
                          0,
                        ),
                        child: Text(
                          getCellHeadline(testSet[i]),
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
                            child: Text(
                              getCellDescription(testSet[i]),
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 4,
          mainAxisExtent: 162,
        ),
      ),
    );
  }
}
