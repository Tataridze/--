import 'package:flutter/material.dart';
import 'package:flutter_application_1/History.dart';

class Profile {
  final String photoUrl;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String email;
  final String address;
  PaymentMethod paymentMethod; // Добавлено поле для способа оплаты

  Profile({
    required this.photoUrl,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
    required this.address,
    required this.paymentMethod, // Обновленный конструктор
  });
}

enum PaymentMethod { card, cash } // Перечисление для способов оплаты

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  PaymentMethod _selectedPaymentMethod = PaymentMethod.card; // Выбранный способ оплаты по умолчанию

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Профиль'),
      ),
      body: Container(
        color:Colors.grey, 
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage('https://media.istockphoto.com/id/1214055045/ru/%D1%84%D0%BE%D1%82%D0%BE/%D0%B4%D0%B6%D1%83%D0%BD%D0%B3%D0%B0%D0%BD%D1%81%D0%BA%D0%B8%D0%B9-%D0%BA%D0%B0%D1%80%D0%BB%D0%B8%D0%BA%D0%BE%D0%B2%D1%8B%D0%B9-%D1%85%D0%BE%D0%BC%D1%8F%D0%BA.jpg?s=1024x1024&w=is&k=20&c=bQGiVHun1EfXpnIAUq26qhuP0M8UlkeAZJmCXaLPke4='),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Имя: Хома', 
                    style: TextStyle(fontSize: 18, color: Colors.black), // Черный цвет текста
                  ),
                  Text(
                    'Фамилия: Сусликович', 
                    style: TextStyle(fontSize: 18, color: Colors.black), // Черный цвет текста
                  ),
                  Text(
                    'Телефон: +6 666 666-66-66', 
                    style: TextStyle(fontSize: 18, color: Colors.black), // Черный цвет текста
                  ),
                  Text(
                    'Email: Homyachok@mail.ru', 
                    style: TextStyle(fontSize: 18, color: Colors.black), // Черный цвет текста
                  ),
                  Text(
                    'Адрес: г. Москва, Рязанский проспект дом 6', 
                    style: TextStyle(fontSize: 18, color: Colors.black), // Черный цвет текста
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    title: Text(
                      'Способ оплаты',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  RadioListTile<PaymentMethod>(
                    title: Text('Картой'),
                    value: PaymentMethod.card,
                    groupValue: _selectedPaymentMethod,
                    onChanged: (PaymentMethod? value) {
                      setState(() {
                        _selectedPaymentMethod = value!;
                      });
                    },
                  ),
                  RadioListTile<PaymentMethod>(
                    title: Text('Наличными'),
                    value: PaymentMethod.cash,
                    groupValue: _selectedPaymentMethod,
                    onChanged: (PaymentMethod? value) {
                      setState(() {
                        _selectedPaymentMethod = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HistoryPage()), // Переход на страницу истории заказов
                    );
                  },
                  child: Text('История заказов'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow, // Желтый цвет кнопки
                    textStyle: TextStyle(fontSize: 18, color: Colors.black), // Черный цвет текста кнопки
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
