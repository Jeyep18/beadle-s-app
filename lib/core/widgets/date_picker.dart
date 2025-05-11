import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final DateTime? dateTime = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2000),
          lastDate: DateTime(3000),
        );
        if (dateTime != null) {
          setState(() {
            selectedDate = dateTime;
          });
        }
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Flexible(
          child:
          //MONTH
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              height: 35,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 245, 244, 255),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: const Color.fromARGB(255, 223, 220, 255),
                  width: 0.5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //DATE ICON
                  const Icon(
                    Icons.calendar_today,
                    color: Color.fromARGB(255, 7, 7, 7),
                    size: 15,
                  ),
                  const SizedBox(width: 5),
                  //DATE TEXT
                  Text(
                    DateFormat('MMM d, y').format(selectedDate),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Color.fromARGB(255, 7, 7, 7),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 5),
                  //DATE ARROW ICON
                  const Icon(
                    Icons.arrow_drop_down,
                    color: Color.fromARGB(255, 7, 7, 7),
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
