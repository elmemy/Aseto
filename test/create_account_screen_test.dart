import 'package:aseto/features/account/presentation/create_account_screen.dart' show CreateAccountScreen;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CreateAccountScreen submits successfully with valid input', (WidgetTester tester) async {
    // Build the widget tree
    await tester.pumpWidget(
      const MaterialApp(
        home: CreateAccountScreen(),
      ),
    );

    // Wait for animations or initial build
    await tester.pumpAndSettle();

    // Find all text fields (7 fields: full name, dob, email, phone, password, confirm password)
    final textFields = find.byType(TextFormField);

    // Fill all required fields
    await tester.enterText(textFields.at(0), 'Ahmed Elmemy'); // Full Name
    await tester.enterText(textFields.at(1), '21-01-1994');   // DOB
    await tester.enterText(textFields.at(2), 'ahmed@gmail.com'); // Email
    await tester.enterText(textFields.at(3), '01012345678'); // Phone
    await tester.enterText(textFields.at(4), 'password123'); // Password
    await tester.enterText(textFields.at(5), 'password123'); // Confirm Password

    // Tap submit button
    final continueButton = find.text('Continue');
    expect(continueButton, findsOneWidget);
    await tester.tap(continueButton);

    // Begin loading
    await tester.pump(); // shows CircularProgressIndicator

    // Wait for async delay (2 seconds)
    await tester.pump(const Duration(seconds: 2));

    // Should no longer show loading spinner
    expect(find.byType(CircularProgressIndicator), findsNothing);

    // Button should return to original state
    expect(continueButton, findsOneWidget);
  });
}
