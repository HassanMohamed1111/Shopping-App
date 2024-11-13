import 'package:flutter/material.dart';
import 'package:products_app/Screens/products.dart';

class DatailsPage extends StatelessWidget {
  DetailsProduct product;
  DatailsPage({super.key , required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Page"),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              child: Image.network(
                product.image,
              ),
            ),
            Text(
              product.name,
            ),
            Text(
              product.descreption,
            ),
          ],
        ),
      ),
    );
  }
}