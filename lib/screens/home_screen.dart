import 'package:flutter/material.dart';
import 'package:seminario_7/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static final routeName = 'home_screen';
  
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ProductCard();
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
