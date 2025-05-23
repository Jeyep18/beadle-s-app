import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final String? icon;
  final bool textAlignLeft;

  const SaveButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.icon,
    this.textAlignLeft = false,
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
                ? const Color.fromARGB(255, 101, 118, 218)
                : const Color.fromARGB(255, 43, 54, 121),
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
        onPressed: onPressed,
        child: Stack(
          children: [
            if (icon != null)
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Opacity(
                      opacity: 0.60,
                      child: Image.asset(
                        icon!,
                        fit: BoxFit.cover,
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                ),
              ),

            Align(
              alignment:
                  textAlignLeft ? Alignment.centerLeft : Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left: textAlignLeft ? 0 : 0),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
