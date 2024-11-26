import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seminario_7/screens/screens.dart';
import 'package:seminario_7/services/services.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductsService(),),
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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ProductScreen.routeName: (_) => ProductScreen(),
        LoadingScreen.routeName: (_) => LoadingScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}