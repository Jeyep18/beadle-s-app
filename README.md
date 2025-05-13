# Beadle’s++ – AdNU's Attendance Management App

Beadle’s++ is a mobile application built with [Flutter](https://flutter.dev) to help student beadles at Ateneo de Naga University efficiently manage and record classroom attendance. Designed for ease of use, reliability, and accessibility, Beadle’s++ modernizes and improves the school's traditional attendance process.

Inspired by the transition from C to C++, this upgraded version enhances the original system with a more intuitive interface and smarter functionality — making attendance-taking faster and more organized than ever.

> **Note:** This app is currently in UI development only. Backend functionality is not yet implemented.

### Project Developers:

- John Francis M. Espiritu _(jfespiritu@gbox.adnu.edu.ph)_
- Lennard Kyle T. Belleza _(lkbelleza@gbox.adnu.edu.ph)_
- Christian Joshua A. Tuyay _(cjtuyay@gbox.adnu.edu.ph)_
- Jet Patrick S. Matias _(jpmatias@gbox.adnu.edu.ph)_

## Features

### Class Management

- Add new classes or delete for beadles with multiple classes.
- Edit existing classes. (TODO)
- View all classes in a dashboard with summary details (TODO)

### Student Management

- Add and Delete individual students to a class.
- Edit student entries. (TODO)

### Attendance Taking

- Select a class and take attendance by marking each student as Present, Late, or Absent.
- Option to mark all students as present quickly.
- Save attendance records per date and time. (TODO)

### Attendance History

- View past attendance records for each class. (TODO)
- Filter by date, subject, schedule, or modality. (TODO)
- Tap on any date to view full attendance details. (TODO)

## Getting Started

Follow these instructions to build and run the project:

### Prerequisites

- Flutter SDK
- Dart SDK
- [Visual Studio Code](https://code.visualstudio.com/docs/setup/setup-overview) (or any preferred IDE)

### Setup Flutter

Follow this detailed guide for installing and setting up flutter based on your platform [here](https://docs.flutter.dev/get-started/install)

> **Note:** Before running this app, make sure you have the latest stable version of Flutter installed.
> Run the following command `flutter upgrade`. This ensures compatibility with the latest features and dependencies used in the project.

### Setup Project

1. Clone the repository:

```
git clone https://github.com/Jeyep18/beadle-s-app.git
```

2. Navigate to the project folder:

```
cd beadles_app
```

3. Install required dependencies:

```
flutter pub get
```

### Run the app

Make sure to have a simulator or a connected Android / iOS device and run the command `flutter run` to build and run the app in debug mode.

## App Preview

<p align="center">
  <img src="assets/images/Screenshot 2.jpg" alt="SplashScreen" width="250"/>
  <img src="assets/images/Screenshot 4.jpg" alt="Log-in" width="250"/>
  <img src="assets/images/Screenshot 1.jpg" alt="Home" width="250"/>
  <img src="assets/images/Screenshot 3.jpg" alt="Dashboard" width="250"/>
  <img src="assets/images/Screenshot 5.jpg" alt="Profile" width="250"/>
  <img src="assets/images/Screenshot 6.jpg" alt="History" width="250"/>
</p>

## License

This project is licensed under the [MIT License](LICENSE) by Beadle's++ Dev Team.
