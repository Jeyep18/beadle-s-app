import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CancelButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            Theme.of(context).brightness == Brightness.light
                ? Color.fromARGB(244, 80, 103, 231)
                : Color.fromARGB(253, 54, 54, 54),
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
