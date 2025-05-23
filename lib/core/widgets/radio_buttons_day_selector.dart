import 'package:flutter/material.dart';

enum Day { m, t, wed, th, fri, sat }

extension DayLabel on Day {
  String get label {
    switch (this) {
      case Day.m:
        return 'M';
      case Day.t:
        return 'T';
      case Day.wed:
        return 'WED';
      case Day.th:
        return 'TH';
      case Day.fri:
        return 'FRI';
      case Day.sat:
        return 'SAT';
    }
  }
}

class DaysSelector extends StatefulWidget {
  const DaysSelector({super.key});

  @override
  State<DaysSelector> createState() => _DaySelect();
}

class _DaySelect extends State<DaysSelector> {
  final Map<Day, bool> _selectedDays = {
    Day.m: false,
    Day.t: false,
    Day.wed: false,
    Day.th: false,
    Day.fri: false,
    Day.sat: false,
  };

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 10,
      children:
          _selectedDays.entries.map((entry) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                  value: entry.value,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _selectedDays[entry.key] = newValue ?? false;
                    });
                  },
                ),
                Text(entry.key.label), // Displays enum name like 'M', 'T', etc.
              ],
            );
          }).toList(),
    );
  }
}
