import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const SaveButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        minimumSize: Size(MediaQuery.of(context).size.width * 0.92, 55),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: () {
        //method for save
        onPressed();
      },
      child: Text(title, style: Theme.of(context).textTheme.labelLarge),
    );
  }
}
