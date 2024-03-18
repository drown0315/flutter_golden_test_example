import 'package:flutter_golden_test_example/circle_button.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('Circle button', (tester) async {
    final builder = GoldenBuilder.grid(
      columns: 3,
      widthToHeightRatio: 1,
    )
      ..addScenario(
        'alarm',
        const CircleButton(icon: 'assets/images/ic_alarm.svg', text: '时钟'),
      )
      ..addScenario(
        'notification',
        const CircleButton(
            icon: 'assets/images/ic_notification.svg', text: '通知'),
      );
    await tester.pumpWidgetBuilder(builder.build());
    await screenMatchesGolden(tester, 'circle_button');
  });
}
