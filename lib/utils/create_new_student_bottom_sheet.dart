import 'package:beadles_app_prototype1/utils/save_button.dart';
import 'package:flutter/material.dart';

void showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    elevation: 6,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder:
        (context) => CreateNewStudentBottomSheet(
          firstNameController: TextEditingController(),
          middleInitialController: TextEditingController(),
          lastNameController: TextEditingController(),
          courseController: TextEditingController(),
          idController: TextEditingController(),
          //onCreate: () {
          // Add your logic here for creating a new student
          //},
        ),
  );
}

class CreateNewStudentBottomSheet extends StatefulWidget {
  //controllers
  final TextEditingController firstNameController;
  final TextEditingController middleInitialController;
  final TextEditingController lastNameController;
  final TextEditingController courseController;
  final TextEditingController idController;

  //final VoidCallback onCreate;

  const CreateNewStudentBottomSheet({
    super.key,
    required this.firstNameController,
    required this.middleInitialController,
    required this.lastNameController,
    required this.courseController,
    required this.idController,
    //required this.onCreate,
  });

  @override
  State<CreateNewStudentBottomSheet> createState() =>
      _CreateNewStudentBottomSheetState();
}

class _CreateNewStudentBottomSheetState
    extends State<CreateNewStudentBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final keyboardVisible = MediaQuery.of(context).viewInsets.bottom > 0;

    return DraggableScrollableSheet(
      initialChildSize: 0.55,
      minChildSize: 0.55,
      maxChildSize: keyboardVisible ? 0.95 : 0.70,
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
          padding: EdgeInsets.only(
            top: 12,
            bottom: MediaQuery.of(context).viewInsets.bottom + 20,
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
                      'Add Student',
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
              const SizedBox(height: 12),

              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: MediaQuery.of(context).viewInsets.bottom + 20,
                  ),
                  //CONTENTS ========================================================
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Student Details:',
                          style: Theme.of(context).textTheme.headlineSmall,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      const SizedBox(height: 12),

                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: TextField(
                              controller: widget.firstNameController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person_rounded,
                                  size: 25,
                                ),
                                hintText: 'First Name',
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
                            flex: 1,
                            child: TextField(
                              controller: widget.middleInitialController,
                              decoration: InputDecoration(
                                hintText: 'M.I.',
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

                      TextField(
                        controller: widget.lastNameController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_rounded, size: 25),
                          hintText: 'Last Name',
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

                      TextField(
                        controller: widget.courseController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.book_rounded, size: 25),
                          hintText: 'Course',
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

                      TextField(
                        controller: widget.idController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.assignment_ind_rounded,
                            size: 25,
                          ),
                          hintText: 'Student ID',
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
                      const SizedBox(height: 15),

                      SaveButton(
                        title: "Create Student",
                        onPressed:
                            () => {
                              //faujsbfjai
                              ////widget.onCreate,
                            },
                      ),

                      const SizedBox(height: 12),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
