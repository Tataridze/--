import 'package:flutter/material.dart';
import 'package:flutter_application_1/product.dart';
import 'cart.dart';

class OrderDetailsPage extends StatelessWidget {
  final List<CartItem> order;
  final Product product;

  OrderDetailsPage({required this.order, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Детали заказа'),
      ),
      body: ListView.builder(
        itemCount: order.length,
        itemBuilder: (context, index) {
          final item = order[index];
          return ListTile(
            leading: Image.network(product.imageUrl),
            title: Text(product.name),
            subtitle: Text('${item.quantity} x ${product.price} ₽'),
          );
        },
      ),
    );
  }
}
