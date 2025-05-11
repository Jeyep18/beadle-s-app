import 'package:beadles_app/utils/radio_buttons_day_selector.dart';
import 'package:beadles_app/utils/save_button.dart';
import 'package:beadles_app/utils/time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    elevation: 6,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => const CreateNewClassBottomsheet(),
  );
}

class CreateNewClassBottomsheet extends StatefulWidget {
  const CreateNewClassBottomsheet({super.key});
  @override
  State<CreateNewClassBottomsheet> createState() =>
      _CreateNewClassBottomsheetState();
}

class _CreateNewClassBottomsheetState extends State<CreateNewClassBottomsheet> {
  final TextEditingController subjectCodeController = TextEditingController();
  final TextEditingController teacherNameController = TextEditingController();
  final TextEditingController sectionController = TextEditingController();
  final TextEditingController roomController = TextEditingController();
  final TextEditingController schoolYearStartController =
      TextEditingController();
  final TextEditingController schoolYearEndController = TextEditingController();

  String? selectedModality;
  String? selectedSemester;

  @override
  Widget build(BuildContext context) {
    final keyboardVisible = MediaQuery.of(context).viewInsets.bottom > 0;

    return DraggableScrollableSheet(
      initialChildSize: 0.70,
      minChildSize: 0.50,
      maxChildSize: keyboardVisible ? 0.95 : 0.75,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color:
                Theme.of(context).brightness == Brightness.light
                    ? Color.fromARGB(255, 243, 248, 253)
                    : Color.fromARGB(255, 12, 14, 19),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            border: Border.all(
              color:
                  Theme.of(context).brightness == Brightness.light
                      ? Color.fromARGB(255, 173, 210, 255)
                      : Color.fromARGB(255, 61, 74, 109),
              width: 0.5,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 12,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 4,
                  width: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 117, 117, 117),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.14),

                      Text(
                        'Create Class',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),

                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.close,
                          size: 25,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),

                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: MediaQuery.of(context).viewInsets.bottom + 60,
                    ),
                    //CONTENTS ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Subject Details:',
                            style: Theme.of(context).textTheme.headlineSmall,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        const SizedBox(height: 12),

                        // Subject Code
                        TextField(
                          textInputAction: TextInputAction.next,
                          controller: subjectCodeController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.book, size: 20),
                            hintText: 'Subject Code',
                            hintStyle: Theme.of(context).textTheme.labelSmall,
                            filled: true,
                            fillColor:
                                Theme.of(context).brightness == Brightness.light
                                    ? Color.fromARGB(255, 239, 246, 250)
                                    : Color.fromARGB(255, 18, 22, 32),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: const Color.fromARGB(255, 117, 117, 117),
                                width: 1,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),

                        // Teacher's name
                        TextField(
                          textInputAction: TextInputAction.next,
                          controller: teacherNameController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person, size: 25),
                            hintText: 'Teacher\'s name',
                            hintStyle: Theme.of(context).textTheme.labelSmall,
                            filled: true,
                            fillColor:
                                Theme.of(context).brightness == Brightness.light
                                    ? Color.fromARGB(255, 239, 246, 250)
                                    : Color.fromARGB(255, 18, 22, 32),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: const Color.fromARGB(255, 117, 117, 117),
                                width: 1,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),

                        // Section and Room side by side
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                textInputAction: TextInputAction.next,
                                controller: sectionController,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.group, size: 25),
                                  hintText: 'Section',
                                  hintStyle:
                                      Theme.of(context).textTheme.labelSmall,
                                  filled: true,
                                  fillColor:
                                      Theme.of(context).brightness ==
                                              Brightness.light
                                          ? Color.fromARGB(255, 239, 246, 250)
                                          : Color.fromARGB(255, 18, 22, 32),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: const Color.fromARGB(
                                        255,
                                        117,
                                        117,
                                        117,
                                      ),
                                      width: 1,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextField(
                                textInputAction: TextInputAction.next,
                                controller: roomController,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.room, size: 25),
                                  hintText: 'Room',
                                  hintStyle:
                                      Theme.of(context).textTheme.labelSmall,
                                  filled: true,
                                  fillColor:
                                      Theme.of(context).brightness ==
                                              Brightness.light
                                          ? Color.fromARGB(255, 239, 246, 250)
                                          : Color.fromARGB(255, 18, 22, 32),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: const Color.fromARGB(
                                        255,
                                        117,
                                        117,
                                        117,
                                      ),
                                      width: 1,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),

                        //Class modality
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Color.fromARGB(255, 239, 246, 250)
                                    : Color.fromARGB(255, 18, 22, 32),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromARGB(255, 117, 117, 117),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Label
                              Text(
                                'Class Modality',
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                              const SizedBox(width: 10),

                              // Dropdown
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.48,
                                child: DropdownButtonFormField<String>(
                                  value: selectedModality,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 12,
                                    ),
                                    filled: true,
                                    fillColor:
                                        Theme.of(context).brightness ==
                                                Brightness.light
                                            ? Color.fromARGB(255, 243, 248, 253)
                                            : Color.fromARGB(255, 12, 14, 19),
                                    hintText: 'Select Modality',
                                    hintStyle:
                                        Theme.of(context).textTheme.labelSmall,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(
                                          255,
                                          117,
                                          117,
                                          117,
                                        ),
                                        width: 1,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(
                                          255,
                                          117,
                                          117,
                                          117,
                                        ),
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  dropdownColor: Theme.of(context).canvasColor,
                                  style: Theme.of(context).textTheme.titleSmall,
                                  items:
                                      [
                                            'Online',
                                            'Blended Online',
                                            'Face to Face',
                                          ]
                                          .map(
                                            (modality) => DropdownMenuItem(
                                              value: modality,
                                              child: Text(modality),
                                            ),
                                          )
                                          .toList(),
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),

                        // School Year
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Color.fromARGB(255, 239, 246, 250)
                                    : Color.fromARGB(255, 18, 22, 32),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromARGB(255, 117, 117, 117),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Label
                              SizedBox(
                                width: 150,
                                child: Text(
                                  'School Year',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                              ),
                              const SizedBox(width: 10),

                              // Inputs
                              Expanded(
                                child: Row(
                                  children: [
                                    // Start year
                                    Flexible(
                                      child: TextField(
                                        textInputAction: TextInputAction.next,
                                        textAlign: TextAlign.center, //center
                                        decoration: InputDecoration(
                                          isDense: true,
                                          contentPadding: EdgeInsets.symmetric(
                                            vertical: 10,
                                            horizontal: 8,
                                          ),
                                          hintText: '2024',
                                          hintStyle:
                                              Theme.of(
                                                context,
                                              ).textTheme.labelSmall,
                                          filled: true,
                                          fillColor:
                                              Theme.of(context).brightness ==
                                                      Brightness.light
                                                  ? Color.fromARGB(
                                                    255,
                                                    243,
                                                    248,
                                                    253,
                                                  )
                                                  : Color.fromARGB(
                                                    255,
                                                    12,
                                                    14,
                                                    19,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            borderSide: BorderSide(
                                              color: const Color.fromARGB(
                                                255,
                                                117,
                                                117,
                                                117,
                                              ),
                                              width: 1,
                                            ),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            borderSide: BorderSide(
                                              color: const Color.fromARGB(
                                                255,
                                                117,
                                                117,
                                                117,
                                              ),
                                              width: 1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        size: 20,
                                      ),
                                    ),
                                    // End year
                                    Flexible(
                                      child: TextField(
                                        textInputAction: TextInputAction.done,
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          contentPadding: EdgeInsets.symmetric(
                                            vertical: 10,
                                            horizontal: 8,
                                          ),
                                          hintText: '2025',
                                          hintStyle:
                                              Theme.of(
                                                context,
                                              ).textTheme.labelSmall,
                                          filled: true,
                                          fillColor:
                                              Theme.of(context).brightness ==
                                                      Brightness.light
                                                  ? Color.fromARGB(
                                                    255,
                                                    243,
                                                    248,
                                                    253,
                                                  )
                                                  : Color.fromARGB(
                                                    255,
                                                    12,
                                                    14,
                                                    19,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            borderSide: BorderSide(
                                              color: const Color.fromARGB(
                                                255,
                                                117,
                                                117,
                                                117,
                                              ),
                                              width: 1,
                                            ),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            borderSide: BorderSide(
                                              color: const Color.fromARGB(
                                                255,
                                                117,
                                                117,
                                                117,
                                              ),
                                              width: 1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),

                        //Semester
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Color.fromARGB(255, 239, 246, 250)
                                    : Color.fromARGB(255, 18, 22, 32),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromARGB(255, 117, 117, 117),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Label
                              SizedBox(
                                width: 100,
                                child: Text(
                                  'Semester',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                              ),
                              const SizedBox(width: 10),

                              // Dropdown
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.48,
                                child: DropdownButtonFormField<String>(
                                  value: selectedSemester,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 12,
                                    ),
                                    hintText: 'Select Semester',
                                    hintStyle:
                                        Theme.of(context).textTheme.labelSmall,
                                    filled: true,
                                    fillColor:
                                        Theme.of(context).brightness ==
                                                Brightness.light
                                            ? Color.fromARGB(255, 243, 248, 253)
                                            : Color.fromARGB(255, 12, 14, 19),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(
                                          255,
                                          117,
                                          117,
                                          117,
                                        ),
                                        width: 1,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(
                                          255,
                                          117,
                                          117,
                                          117,
                                        ),
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  dropdownColor: Theme.of(context).canvasColor,
                                  style: Theme.of(context).textTheme.titleSmall,
                                  items:
                                      ['1st Semester', '2nd Semester']
                                          .map(
                                            (sem) => DropdownMenuItem(
                                              value: sem,
                                              child: Text(sem),
                                            ),
                                          )
                                          .toList(),
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),

                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Schedule:',
                            style: Theme.of(context).textTheme.headlineSmall,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        const SizedBox(height: 12),

                        Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Color.fromARGB(255, 239, 246, 250)
                                    : Color.fromARGB(255, 18, 22, 32),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromARGB(255, 117, 117, 117),
                              width: 1,
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 10.0,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Days:',
                                    style:
                                        Theme.of(
                                          context,
                                        ).textTheme.headlineSmall,
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 5),

                              DaysSelector(),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),

                        // Start and End time
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Color.fromARGB(255, 239, 246, 250)
                                    : Color.fromARGB(255, 18, 22, 32),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromARGB(255, 117, 117, 117),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Label
                              SizedBox(
                                width: 150,
                                child: Text(
                                  'Time',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                              ),
                              const SizedBox(width: 5),

                              // Inputs
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).brightness ==
                                              Brightness.light
                                          ? Color.fromARGB(255, 243, 248, 253)
                                          : Color.fromARGB(255, 12, 14, 19),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                      255,
                                      117,
                                      117,
                                      117,
                                    ),
                                    width: 1,
                                  ),
                                ),
                                child: TimePicker(),
                              ),

                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Icon(Icons.arrow_forward, size: 20),
                              ),

                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).brightness ==
                                              Brightness.light
                                          ? Color.fromARGB(255, 243, 248, 253)
                                          : Color.fromARGB(255, 12, 14, 19),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                      255,
                                      117,
                                      117,
                                      117,
                                    ),
                                    width: 1,
                                  ),
                                ),
                                child: TimePicker(),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),

                        SaveButton(
                          title: "Create Class",
                          onPressed: () {
                            // Save button action
                            HapticFeedback.mediumImpact();
                            Navigator.pop(context);
                          },
                        ),

                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
