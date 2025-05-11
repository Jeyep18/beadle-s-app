import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final TimeOfDay? time = await showTimePicker(
          context: context,
          initialTime: selectedTime,
          initialEntryMode: TimePickerEntryMode.dial,
        );
        if (time != null && time != selectedTime) {
          setState(() {
            selectedTime = time;
          });
        }
      },
      child: Text(
        MaterialLocalizations.of(
          context,
        ).formatTimeOfDay(selectedTime, alwaysUse24HourFormat: false),
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          fontSize: 14,
          color: Theme.of(context).colorScheme.tertiary,
        ),
      ),
    );
  }
}
