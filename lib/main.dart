import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        // Modern Material 3 (if applicable):
        useMaterial3:
            true, // Enable Material 3 if your Flutter version supports it

        // Primary color scheme (adapt to your brand):
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(
              0xFF00C569), // Replace with your desired primary color
          brightness: Brightness.light,
        ),

        // Additional theming (adjust as needed):
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 16.0,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 16.0),
            primary: const Color(0xFF00C569), // Match primary color
          ),
        ),
        appBarTheme: const AppBarTheme(
          color: const Color(0xFF00C569), // Match primary color for app bar
        ),
        // Consider theming other widgets like TextFields, Dialogs, etc. for consistency

        // Scaffold background (optional):
        scaffoldBackgroundColor:
            Colors.grey[200], // Adjust for desired background

        // Accessibility considerations:
        visualDensity: VisualDensity
            .adaptivePlatformDensity, // Ensure proper spacing across platforms
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
          style: TextStyle(
            color: Colors.blue, // Change color as needed
            fontSize: 24, // Change font size
            fontWeight: FontWeight.bold, // Change font weight
            fontStyle: FontStyle.italic, // Change font style
            letterSpacing: 1.5, // Change letter spacing
            // You can add more styles as needed
          ),
        ),
      ),
    );
  }
}
