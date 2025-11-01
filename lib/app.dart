import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'themes/light_theme.dart';
import 'themes/dark_theme.dart';
import 'themes/theme_provider.dart';
import 'pages/splash_screen.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/projects_page.dart';
import 'pages/focus_page.dart';
import 'pages/contact_page.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return MaterialApp(
          title: 'Ficram Manifur Portfolio',
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          initialRoute: '/splash',
          routes: {
            '/splash': (context) => const SplashScreen(),
            '/': (context) => const HomePage(),
            '/about': (context) => const AboutPage(),
            '/projects': (context) => const ProjectsPage(),
            '/focus': (context) => const FocusPage(),
            '/contact': (context) => const ContactPage(),
          },
        );
      },
    );
  }
}
