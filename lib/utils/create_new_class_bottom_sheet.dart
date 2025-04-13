import 'package:flutter/material.dart';

void showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => const CreateNewClassBottomsheet(),
  );
}

class CreateNewClassBottomsheet extends StatelessWidget {
  const CreateNewClassBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom + 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Create Class',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              child: Text(
                'Subject Details:',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 12),

            // Input Fields
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color.fromARGB(255, 117, 117, 117),
                  width: 1,
                ),
              ),
              child: Icon(Icons.add, size: 40, color: Colors.grey),
            ),
            const SizedBox(height: 10),

            // Subject Code
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.book, size: 20),
                hintText: 'Subject Code',
                hintStyle: Theme.of(context).textTheme.labelSmall,
                filled: true,
                fillColor: Theme.of(context).scaffoldBackgroundColor,
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
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person, size: 25),
                hintText: 'Teacher\'s name',
                hintStyle: Theme.of(context).textTheme.labelSmall,
                filled: true,
                fillColor: Theme.of(context).scaffoldBackgroundColor,
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
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.group, size: 25),
                      hintText: 'Section',
                      hintStyle: Theme.of(context).textTheme.labelSmall,
                      filled: true,
                      fillColor: Theme.of(context).scaffoldBackgroundColor,
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
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.room, size: 25),
                      hintText: 'Room',
                      hintStyle: Theme.of(context).textTheme.labelSmall,
                      filled: true,
                      fillColor: Theme.of(context).scaffoldBackgroundColor,
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
                ),
              ],
            ),
            const SizedBox(height: 10),

            //Class modality
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
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
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(width: 10),

                  // Dropdown
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 12,
                        ),
                        filled: true,
                        fillColor: Theme.of(context).scaffoldBackgroundColor,
                        hintText: 'Select Modality',
                        hintStyle: Theme.of(context).textTheme.labelSmall,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 117, 117, 117),
                            width: 1,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 117, 117, 117),
                            width: 1,
                          ),
                        ),
                      ),
                      dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                      style: Theme.of(context).textTheme.labelSmall,
                      items:
                          ['Online', 'Blended Online', 'Face to Face']
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
                color: Theme.of(context).scaffoldBackgroundColor,
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
                      style: Theme.of(context).textTheme.headlineSmall,
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
                            textAlign: TextAlign.center, //center
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 8,
                              ),
                              hintText: '2024',
                              hintStyle: Theme.of(context).textTheme.labelSmall,
                              filled: true,
                              fillColor:
                                  Theme.of(context).scaffoldBackgroundColor,
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
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Icon(Icons.arrow_forward, size: 20),
                        ),
                        // End year
                        Flexible(
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 8,
                              ),
                              hintText: '2025',
                              hintStyle: Theme.of(context).textTheme.labelSmall,
                              filled: true,
                              fillColor:
                                  Theme.of(context).scaffoldBackgroundColor,
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
                color: Theme.of(context).scaffoldBackgroundColor,
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
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  const SizedBox(width: 10),

                  // Dropdown
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 12,
                        ),
                        hintText: 'Select Semester',
                        hintStyle: Theme.of(context).textTheme.labelSmall,
                        filled: true,
                        fillColor: Theme.of(context).scaffoldBackgroundColor,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 117, 117, 117),
                            width: 1,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 117, 117, 117),
                            width: 1,
                          ),
                        ),
                      ),
                      dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                      style: Theme.of(context).textTheme.labelSmall,
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
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color.fromARGB(255, 117, 117, 117),
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Days:',
                        style: Theme.of(context).textTheme.headlineSmall,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),

                  const SizedBox(height: 5),

                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Monday
                        TextButton(onPressed: () {}, child: const Text('M')),
                        // Tuesday
                        TextButton(onPressed: () {}, child: const Text('T')),
                        // Wednesday
                        TextButton(onPressed: () {}, child: const Text('W')),
                        // Thursday
                        TextButton(onPressed: () {}, child: const Text('TH')),
                        // Friday
                        TextButton(onPressed: () {}, child: const Text('FRI')),
                        TextButton(onPressed: () {}, child: const Text('S')),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Button Row
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    // Add your logic
                    Navigator.pop(context);
                  },
                  child: const Text('Save'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
