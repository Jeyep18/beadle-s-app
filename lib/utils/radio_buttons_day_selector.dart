import 'package:flutter/material.dart';

enum Day { M, T, WED, TH, FRI, SAT }

class DaysSelector extends StatefulWidget {
  const DaysSelector({super.key});

  @override
  State<DaysSelector> createState() => _DaySelect();
}

class _DaySelect extends State<DaysSelector> {
  final Map<Day, bool> _selectedDays = {
    Day.M: false,
    Day.T: false,
    Day.WED: false,
    Day.TH: false,
    Day.FRI: false,
    Day.SAT: false,
  };

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // Wrap handles responsiveness better than Row
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
                Text(entry.key.name), // Displays enum name like 'M', 'T', etc.
              ],
            );
          }).toList(),
    );
  }
}
