import 'package:flutter/material.dart';

class CreateNewClassPopup extends StatelessWidget {
  const CreateNewClassPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Create Class',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Subject Details:',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const SizedBox(height: 10),

            // Subject Icon Box
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

            // Class Modality
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                filled: true,
                fillColor: Theme.of(context).scaffoldBackgroundColor,
                hintText: 'Class Modality',
                hintStyle: Theme.of(context).textTheme.labelSmall,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 117, 117, 117),
                    width: 1,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 117, 117, 117),
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
            const SizedBox(height: 10),

            // School Year Row
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '2024',
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
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 117, 117, 117),
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
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '2025',
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
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 117, 117, 117),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Semester Dropdown
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: 'Semester',
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
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 117, 117, 117),
                    width: 1,
                  ),
                ),
              ),
              dropdownColor: Theme.of(context).scaffoldBackgroundColor,
              style: Theme.of(context).textTheme.labelSmall,
              items:
                  ['1st Semester', '2nd Semester']
                      .map(
                        (sem) => DropdownMenuItem(value: sem, child: Text(sem)),
                      )
                      .toList(),
              onChanged: (value) {},
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Cancel Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 173, 173, 173),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 33,
                      vertical: 12,
                    ),
                  ),
                  child: Text(
                    "Cancel",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),

                SizedBox(width: 10),

                // Save Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 12,
                    ),
                  ),
                  child: Text(
                    "Save",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
