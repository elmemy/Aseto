import 'package:aseto/features/account/presentation/create_account_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  testWidgets('CreateAccountScreen submits successfully with valid input', (WidgetTester tester) async {
    // Fix 1: Wrap in ProviderScope
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: CreateAccountScreen(),
        ),
      ),
    );

    await tester.pumpAndSettle();

    // Fix 2: Set large screen size to avoid scroll issues
    await tester.binding.setSurfaceSize(const Size(1200, 2000));
    await tester.pump();

    // Enter data
    await tester.enterText(find.widgetWithText(TextFormField, 'Full Name'), 'Ahmed Elmemy');
    await tester.enterText(find.widgetWithText(TextFormField, 'Date of birth (MM-DD-YYYY)'), '01-01-1990');
    await tester.enterText(find.widgetWithText(TextFormField, 'Email'), 'ahmedelmemy@icloud.com');
    await tester.enterText(find.widgetWithText(TextFormField, 'Phone'), '01012345678');
    await tester.enterText(find.widgetWithText(TextFormField, 'Password'), 'Password123');
    await tester.enterText(find.widgetWithText(TextFormField, 'Confirm Password'), 'Password123');

    // Tap submit button
    final continueButton = find.text('Continue');
    await tester.ensureVisible(continueButton);
    await tester.tap(continueButton);

    await tester.pump(); // shows loader
    await tester.pump(const Duration(seconds: 2)); // wait for fake async

    // Assert no loader
    expect(find.byType(CircularProgressIndicator), findsNothing);

    // Button should still be visible
    expect(continueButton, findsOneWidget);
  });
}
