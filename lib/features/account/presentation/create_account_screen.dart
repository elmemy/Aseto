import 'package:flutter/material.dart';
import 'widgets/create_account_form.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: const CreateAccountForm(),
        ),
      ),
    );
  }
}
