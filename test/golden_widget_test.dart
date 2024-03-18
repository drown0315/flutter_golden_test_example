import 'package:flutter_golden_test_example/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Circle Button Golden test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await expectLater(find.byType(MyApp), matchesGoldenFile('circle_button.png'));
  });
}
