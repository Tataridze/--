import 'package:flutter/material.dart';
import 'product.dart'; // Импортируйте свой класс Product
import 'cart.dart'; // Импортируйте класс Cart

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    final List<Product> favoriteProducts = Cart.favoriteProducts.toList(); // Преобразуем множество в список
    return Scaffold(
      appBar: AppBar(
        title: Text('Избранное'),
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Возврат на предыдущий экран
          },
        ),
      ),
      body: ListView.builder(
        itemCount: favoriteProducts.length, // Используем преобразованный список
        itemBuilder: (context, index) {
          final product = favoriteProducts[index]; // Получаем продукт по индексу из списка
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(product.imageUrl),
            ),
            title: Text(
              product.name,
              style: TextStyle(color: Colors.black), // Черный цвет текста
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Цена: ${product.price} руб. за штуку',
                  style: TextStyle(color: Colors.black), // Черный цвет текста
                ),
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  Cart.favoriteProducts.remove(product); // Удаляем продукт из избранного
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Продукт удален из избранного')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
