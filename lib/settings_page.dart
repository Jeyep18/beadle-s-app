import 'package:beadles_app_prototype1/utils/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).brightness == Brightness.light
                ? Color.fromARGB(255, 228, 228, 255)
                : Color.fromARGB(255, 0, 7, 27),
            Theme.of(context).scaffoldBackgroundColor,
            Theme.of(context).scaffoldBackgroundColor,
            Theme.of(context).brightness == Brightness.light
                ? Color.fromARGB(255, 195, 195, 255)
                : Color.fromARGB(255, 0, 7, 27),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          systemOverlayStyle:
              Theme.of(context).brightness == Brightness.dark
                  ? SystemUiOverlayStyle.light
                  : SystemUiOverlayStyle.dark,
          iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.tertiary,
          ),
          centerTitle: true,
          titleSpacing: 0,
          title: Text(
            'Settings',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          backgroundColor: Colors.transparent,
        ),

        extendBodyBehindAppBar: true,
        extendBody: true,

        body: Stack(
          children: [
            const Positioned.fill(child: BackgroundPage()),

            //========================= MAIN CONTENT =========================
            Column(
              children: [
                SizedBox(
                  height:
                      kToolbarHeight + MediaQuery.of(context).padding.top + 20,
                ),

                Center(
                  child: Column(
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 120,
                        color: Theme.of(
                          context,
                        ).colorScheme.tertiary.withAlpha(225),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Lennard Kyle Belleza',
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '@lkbelleza',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Settings',
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium?.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            //nigger
                          },
                          borderRadius: BorderRadius.circular(8),
                          splashColor: Theme.of(
                            context,
                          ).colorScheme.primary.withAlpha(225),
                          highlightColor: Theme.of(
                            context,
                          ).colorScheme.primary.withAlpha(225),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person_outline,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Account',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodyLarge?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Settings',
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium?.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            //nigger
                          },
                          borderRadius: BorderRadius.circular(8),
                          splashColor: Theme.of(
                            context,
                          ).colorScheme.primary.withAlpha(225),
                          highlightColor: Theme.of(
                            context,
                          ).colorScheme.primary.withAlpha(225),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.notifications_none_outlined,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Notification',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodyLarge?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            //nigger
                          },
                          borderRadius: BorderRadius.circular(8),
                          splashColor: Theme.of(
                            context,
                          ).colorScheme.primary.withAlpha(225),
                          highlightColor: Theme.of(
                            context,
                          ).colorScheme.primary.withAlpha(225),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.wb_sunny_outlined,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Light Mode',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodyLarge?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Settings',
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium?.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            //nigger
                          },
                          borderRadius: BorderRadius.circular(8),
                          splashColor:
                              Theme.of(context).colorScheme.primary
                                ..withAlpha(225),
                          highlightColor: Theme.of(
                            context,
                          ).colorScheme.primary.withAlpha(225),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.headphones_outlined,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Help and Support',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodyLarge?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Settings',
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium?.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            //nigger
                          },
                          borderRadius: BorderRadius.circular(8),
                          splashColor: Theme.of(
                            context,
                          ).colorScheme.primary.withAlpha(0),
                          highlightColor: Theme.of(
                            context,
                          ).colorScheme.primary.withAlpha(0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.people_alt_outlined,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'About us',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodyLarge?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
