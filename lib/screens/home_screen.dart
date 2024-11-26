import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seminario_7/screens/screens.dart';
import 'package:seminario_7/services/services.dart';
import 'package:seminario_7/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static final routeName = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productsService = Provider.of<ProductsService>(context);

    return productsService.isLoading
        ? LoadingScreen()
        : Scaffold(
            appBar: AppBar(
              title: Text('Productos'),
            ),
            body: ListView.builder(
              itemCount: productsService.products.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    productsService.selectedProduct =
                        productsService.products[index].copy();
                    Navigator.pushNamed(context, ProductScreen.routeName);
                  },
                  child: ProductCard(
                    product: productsService.products[index],
                  ),
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {},
            ),
          );
  }
}
