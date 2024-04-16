import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart'; 

class PurchaseHistory {
  static List<Order> orders = []; // Список для хранения информации о заказах

  // Метод для добавления заказа в историю покупок
  static void addOrder(Order order) {
    orders.add(order);
  }
}

class Order {
  final List<CartItem> items;
  final DateTime date;

  Order({required this.items, required this.date});
}

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('История заказов'),
      ),
      body: ListView.builder(
        itemCount: PurchaseHistory.orders.length,
        itemBuilder: (context, index) {
          final order = PurchaseHistory.orders[index];

          return Card(
            color: Colors.grey[300],
            child: ListTile(
              title: Text(
                'Заказ ${index + 1}',
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Всего ${order.items.length} товаров',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Дата: ${order.date}',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              onTap: () {
                // Ваш код для открытия деталей заказа
              },
            ),
          );
        },
      ),
    );
  }
}
