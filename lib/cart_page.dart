import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart'; 
import 'package:flutter_application_1/History.dart';

class CartPage extends StatefulWidget {
  final List<CartItem> cartItems;

  CartPage({required this.cartItems});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double totalCost = 0;

  @override
  void initState() {
    super.initState();
    calculateTotalCost();
  }

  void calculateTotalCost() {
    setState(() {
      totalCost = Cart.getTotalPrice(widget.cartItems);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Корзина'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        color: Colors.grey[300],
        child: ListView.builder(
          itemCount: widget.cartItems.length,
          itemBuilder: (context, index) {
            final item = widget.cartItems[index];
            return ListTile(
              leading: Image.network(item.product.imageUrl),
              title: Text(item.product.name),
              subtitle: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        Cart.removeQuantity(item.product, 1); // Уменьшение количества товара на 1
                        calculateTotalCost();
                      });
                    },
                  ),
                  Text('${item.quantity}'),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        Cart.addItem(item.product); // Увеличение количества товара на 1
                        calculateTotalCost();
                      });
                    },
                  ),
                  Text('${item.product.price} ₽'),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('${item.product.price * item.quantity} ₽'),
                  const SizedBox(width: 8),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.yellow,
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // Удаление всех продуктов из корзины
                  Cart.clearCart();
                  calculateTotalCost();
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Цвет кнопки удаления всех продуктов
              ),
              child: const Text('Удалить все', style: TextStyle(fontSize: 16)),
            ),
            Text(
              'Общая сумма: $totalCost ₽',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            
           ElevatedButton(
              onPressed: () {
                // Создание заказа и добавление его в историю заказов
                final order = Order(items: widget.cartItems, date: DateTime.now());
                PurchaseHistory.addOrder(order);
                // Очистка корзины после оплаты
                Cart.clearCart();
                calculateTotalCost();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
              ),
              child: const Text('Оплатить', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
