import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum StudentStatus { present, absent, late }

class StatusPicker extends StatefulWidget {
  const StatusPicker({super.key});

  @override
  State<StatusPicker> createState() => _StatusPickerState();
}

class _StatusPickerState extends State<StatusPicker> {
  //status
  StudentStatus? _character = StudentStatus.absent;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Present",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Color(0xFF312c4a)
                        : Color.fromARGB(255, 255, 255, 255),
              ),
            ),

            Radio<StudentStatus>(
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: StudentStatus.present,
              groupValue: _character,
              onChanged: (StudentStatus? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Absent",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Color(0xFF312c4a)
                        : Color.fromARGB(255, 255, 255, 255),
              ),
            ),

            Radio<StudentStatus>(
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: StudentStatus.absent,
              groupValue: _character,
              onChanged: (StudentStatus? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Late",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color:
                    Theme.of(context).brightness == Brightness.light
                        ? Color(0xFF312c4a)
                        : Color.fromARGB(255, 255, 255, 255),
              ),
            ),

            Radio<StudentStatus>(
              visualDensity: VisualDensity(horizontal: 0, vertical: -2),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: StudentStatus.late,
              groupValue: _character,
              onChanged: (StudentStatus? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
