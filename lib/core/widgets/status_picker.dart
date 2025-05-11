import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum StudentStatus { present, absent, late }

class StatusPicker extends StatelessWidget {
  final StudentStatus? selectedStatus;
  final ValueChanged<StudentStatus?> onStatusChanged;

  const StatusPicker({
    super.key,
    this.selectedStatus,
    required this.onStatusChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        _buildRadio(context, StudentStatus.present, "Present"),
        _buildRadio(context, StudentStatus.absent, "Absent"),
        _buildRadio(context, StudentStatus.late, "Late"),
      ],
    );
  }

  Widget _buildRadio(BuildContext context, StudentStatus? value, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 14,
            color:
                Theme.of(context).brightness == Brightness.light
                    ? const Color(0xFF312c4a)
                    : const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        Radio<StudentStatus?>(
          visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          value: value,
          groupValue: selectedStatus,
          onChanged: (val) {
            onStatusChanged(val);
          },
        ),
      ],
    );
  }
}
