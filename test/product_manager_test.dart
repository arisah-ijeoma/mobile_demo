import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_demo_app/main.dart';

void main() {
	testWidgets('displays app title', (WidgetTester tester) async {
		// Build our app and trigger a frame.
		await tester.pumpWidget(MyApp());

		RaisedButton btn = find.widgetWithText(RaisedButton, 'Add items').evaluate().first.widget;
		btn.onPressed();
		await tester.pump();

		expect(find.text('Food tester'), findsOneWidget);
		expect(find.text('Chef'), findsOneWidget);

		btn.onPressed();
		await tester.pump();

		expect(find.text('Chef'), findsNWidgets(2));
	});
}
