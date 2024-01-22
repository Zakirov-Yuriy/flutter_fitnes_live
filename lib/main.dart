import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/birth_year_provider.dart';
import 'provider/height_provider.dart';
import 'provider/weight_provider.dart';
import 'widgets/survey_screens/splash_screen/splash_screen.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HeightProvider()),
        ChangeNotifierProvider(create: (context) => WeightProvider()),
        ChangeNotifierProvider(create: (context) => BirthYearProvider()),

        // Добавьте другие провайдеры, если нужно
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
