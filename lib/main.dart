import 'package:flutter/material.dart';
import 'providers/app_state.dart';
import 'screens/main_screen.dart';
import 'screens/detail_screen.dart';
import 'screens/tips_screen.dart';
import 'screens/about_screen.dart';

final appState = AppState();

void main() {
  runApp(const HouseplantGuideApp());
}

class HouseplantGuideApp extends StatelessWidget {
  const HouseplantGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: appState,
      builder: (context, child) {
        return MaterialApp(
          title: 'Houseplant Guide',
          debugShowCheckedModeBanner: false,
          themeMode: appState.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          theme: ThemeData(
            primarySwatch: Colors.teal,
            primaryColor: Colors.teal,
            scaffoldBackgroundColor: Colors.grey.shade50,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
              elevation: 0,
            ),
            useMaterial3: false,
          ),
          darkTheme: ThemeData.dark().copyWith(
            primaryColor: Colors.teal,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
              elevation: 0,
            ),
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => MainScreen(appState: appState),
            '/detail': (context) => DetailScreen(appState: appState),
            '/tips': (context) => const TipsScreen(),
            '/about': (context) => const AboutScreen(),
          },
        );
      },
    );
  }
}
