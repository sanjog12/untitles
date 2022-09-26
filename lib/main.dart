import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/math_details/presentation/manager/get_match_data_notifier.dart';
import 'package:untitled1/math_details/presentation/manager/selected_innings_notifier.dart';
import 'package:untitled1/math_details/presentation/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GetMatchDataNotifier>(
          create: (_) => GetMatchDataNotifier(),
        ),

        ChangeNotifierProvider<SelectedInningsNotifier>(
          create: (_) => SelectedInningsNotifier(),
        ),
      ],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
