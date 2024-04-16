import 'product.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
}

class Cart {
  static List<CartItem> _cartItems = [];
  static Set<Product> _favoriteProducts = {}; // Изменили на Set<Product>

  static List<CartItem> get cartItems => _cartItems;
  static Set<Product> get favoriteProducts => _favoriteProducts;

  static void addItem(Product product) {
    bool found = false;
    for (var item in _cartItems) {
      if (item.product == product) {
        item.quantity++;
        found = true;
        break;
      }
    }
    if (!found) {
      _cartItems.add(CartItem(product: product));
    }
  }

  static void removeItem(Product product) {
    for (var item in _cartItems) {
      if (item.product == product) {
        if (item.quantity > 1) {
          item.quantity--;
        } else {
          _cartItems.remove(item);
        }
        break;
      }
    }
  }

  static void removeQuantity(Product product, int quantityToRemove) {
    for (var item in _cartItems) {
      if (item.product == product) {
        if (item.quantity > quantityToRemove) {
          item.quantity -= quantityToRemove;
        } else {
          _cartItems.remove(item);
        }
        break;
      }
    }
  }

  static void clearCart() {
    _cartItems.clear();
  }

  static double getTotalPrice(List<CartItem> cartItems) {
    double total = 0;
    for (var item in _cartItems) {
      total += item.product.price * item.quantity;
    }
    return total;
  }

  static void addFavorite(Product product) {
    if (!_favoriteProducts.contains(product)) {
      _favoriteProducts.add(product);
    }
  }

  static int getItemCount(Product product) {
    for (var item in _cartItems) {
      if (item.product == product) {
        return item.quantity;
      }
    }
    return 0;
  }

  static double getItemTotalPrice(Product product) {
    for (var item in _cartItems) {
      if (item.product == product) {
        return item.product.price * item.quantity;
      }
    }
    return 0;
  }

  static void addAllToCart() {
    for (var product in _favoriteProducts) {
      addItem(product);
    }
  }
}