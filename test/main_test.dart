import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_demo_app/main.dart';

void main() {
  testWidgets('displays app title', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that app shows correct details
    expect(find.text('Listers'), findsOneWidget);
    expect(find.text('Food tester'), findsOneWidget);
  });
}
