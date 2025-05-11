import 'package:beadles_app/core/widgets/background.dart';
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
            'Profile',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          backgroundColor: Colors.transparent,
          actionsPadding: EdgeInsets.only(right: 10),
          actions: [
            TextButton(
              onPressed: () {
                HapticFeedback.mediumImpact();
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/login-page',
                  (route) => false,
                );
              },
              child: Text(
                'Logout',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ),
          ],
        ),

        extendBodyBehindAppBar: true,
        extendBody: true,

        body: Stack(
          children: [
            const Positioned.fill(child: BackgroundPage()),

            //========================= MAIN CONTENT =========================
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height:
                      kToolbarHeight + MediaQuery.of(context).padding.top + 20,
                ),

                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                        'Lennard Kyle T. Belleza',
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '@lkbelleza',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Color.fromARGB(255, 66, 116, 255),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18.0,
                    vertical: 0.0,
                  ),
                  child: Text(
                    'Account',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color:
                          Theme.of(context).brightness == Brightness.light
                              ? Color.fromARGB(255, 122, 122, 122)
                              : Color.fromARGB(255, 202, 202, 202),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      //nigger
                    },
                    borderRadius: BorderRadius.circular(8),
                    splashColor: Theme.of(
                      context,
                    ).colorScheme.primary.withAlpha(60),
                    highlightColor: Theme.of(
                      context,
                    ).colorScheme.primary.withAlpha(35),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 16.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person_outline_rounded,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                          const SizedBox(width: 15),
                          Text(
                            'Manage Accounts',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                //========================= PREFERENCES =========================
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18.0,
                    vertical: 0.0,
                  ),
                  child: Text(
                    'Preferences',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color:
                          Theme.of(context).brightness == Brightness.light
                              ? Color.fromARGB(255, 122, 122, 122)
                              : Color.fromARGB(255, 202, 202, 202),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      //nigger
                    },
                    borderRadius: BorderRadius.circular(8),
                    splashColor: Theme.of(
                      context,
                    ).colorScheme.primary.withAlpha(60),
                    highlightColor: Theme.of(
                      context,
                    ).colorScheme.primary.withAlpha(35),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 16.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications_none_outlined,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                          const SizedBox(width: 15),
                          Text(
                            'Notifications',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
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
                    ).colorScheme.primary.withAlpha(60),
                    highlightColor: Theme.of(
                      context,
                    ).colorScheme.primary.withAlpha(35),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 16.00,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.palette_outlined,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                          const SizedBox(width: 15),
                          Text(
                            'Theme',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                //========================= USER GUIDE =========================
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18.0,
                    vertical: 0.0,
                  ),
                  child: Text(
                    'User Guide',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color:
                          Theme.of(context).brightness == Brightness.light
                              ? Color.fromARGB(255, 122, 122, 122)
                              : Color.fromARGB(255, 202, 202, 202),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      //nigger
                    },
                    borderRadius: BorderRadius.circular(8),
                    splashColor: Theme.of(
                      context,
                    ).colorScheme.primary.withAlpha(60),
                    highlightColor: Theme.of(
                      context,
                    ).colorScheme.primary.withAlpha(35),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 16.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.headphones_outlined,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                          const SizedBox(width: 15),
                          Text(
                            'Help and Support',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
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
                    ).colorScheme.primary.withAlpha(60),
                    highlightColor: Theme.of(
                      context,
                    ).colorScheme.primary.withAlpha(35),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 16.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.book_outlined,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                          const SizedBox(width: 15),
                          Text(
                            'Beadle\'s Guide',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                //========================= ABOUT =========================
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18.0,
                    vertical: 0.0,
                  ),
                  child: Text(
                    'About',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color:
                          Theme.of(context).brightness == Brightness.light
                              ? Color.fromARGB(255, 122, 122, 122)
                              : Color.fromARGB(255, 202, 202, 202),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      //nigger
                    },
                    borderRadius: BorderRadius.circular(8),
                    splashColor: Theme.of(
                      context,
                    ).colorScheme.primary.withAlpha(60),
                    highlightColor: Theme.of(
                      context,
                    ).colorScheme.primary.withAlpha(35),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 16.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.people_alt_outlined,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                          const SizedBox(width: 15),
                          Text(
                            'About us',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
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
