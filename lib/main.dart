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
        title: Text(title),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0, // Consider a subtle elevation
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(20),
        child: Center(
          child: AnimatedContainer(
            duration:
                const Duration(milliseconds: 500), // Adjust animation duration
            curve: Curves.easeInOut, // Customize animation curve
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.2), // Semi-transparent blue
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Handle tap event (e.g., print message, navigate to another screen)
                      print('Hello World clicked!');
                    },
                    child: Text(
                      'Hello, World!',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  // Add additional content as needed
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
