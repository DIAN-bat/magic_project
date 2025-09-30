import 'package:flutter/material.dart';
import 'package:magic_project/provider/cards_provider.dart';
import 'package:magic_project/routes/AppRoutes.dart';
import 'package:magic_project/theme/AppTheme.dart';
import 'package:provider/provider.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>CardsProvider(), lazy: false)
      ],
      child: MyApp(),
    
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: AppRoutes.routes,
      theme: Apptheme.darkTheme,
    );
  }
}