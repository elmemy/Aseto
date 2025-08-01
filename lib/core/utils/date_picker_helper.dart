import 'package:aseto/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerHelper {
  static Future<void> showDatePickerDialog({
    required BuildContext context,
    required Function(String) onDateSelected,
    DateFormat? formatter,
    DateTime? initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
    Locale? locale,
    String fontFamily = FontFamily.parabolica,
  }) async {
    final DateTime now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate ?? now,
      firstDate: firstDate ?? DateTime(1900),
      lastDate: lastDate ?? now,
      locale: locale,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: Theme.of(context).copyWith(
            textTheme: Theme.of(
              context,
            ).textTheme.apply(fontFamily: fontFamily),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      final DateFormat format = formatter ?? DateFormat('MM-dd-yyyy');
      onDateSelected(format.format(picked));
    }
  }
}
