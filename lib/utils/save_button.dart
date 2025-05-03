import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool hasLogo;

  const SaveButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.hasLogo = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).brightness == Brightness.light
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.primary,
            Theme.of(context).brightness == Brightness.light
                ? Color.fromARGB(255, 101, 118, 218)
                : Color.fromARGB(255, 43, 54, 121),
          ],
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          minimumSize: Size(MediaQuery.of(context).size.width * 0.92, 55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          //method for save
          onPressed();
        },
        child:
            hasLogo
                ? Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.labelLarge),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/logo/Ateneo_de_Naga_University_logo.png',
                      height: 25,
                    ),
                  ],
                )
                : Text(title, style: Theme.of(context).textTheme.labelLarge),
      ),
    );
  }
}
