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
    builder: (context) => const CreateNewStudentBottomSheet(),
  );
}

class CreateNewStudentBottomSheet extends StatefulWidget {
  const CreateNewStudentBottomSheet({super.key});

  @override
  State<CreateNewStudentBottomSheet> createState() =>
      _CreateNewStudentBottomSheetState();
}

class _CreateNewStudentBottomSheetState
    extends State<CreateNewStudentBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.75,
      minChildSize: 0.75,
      maxChildSize: 0.75,
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
          padding: const EdgeInsets.only(top: 12),
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
              const SizedBox(height: 12),

              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: MediaQuery.of(context).viewInsets.bottom + 20,
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
