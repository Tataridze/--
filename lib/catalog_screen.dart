import 'package:flutter/material.dart';
import 'product.dart';
import 'cart.dart'; 
import 'cart_page.dart'; 
import 'profile_page.dart';
import 'favorites_page.dart';

class CatalogScreen extends StatelessWidget {
  static final List<Product> products = [
    Product(
      name: 'Букет из клубники и орхидей космос',
      description: 'Иногда количество штук клубники в букете может отличаться - зависит от размера ягоды.Но вес букета и размер букета останется фиксированным.Клубника в шоколаде 582 гр Общий вес букета 756 гр',
      price: 3439,
      imageUrl: 'https://content2.flowwow-images.com/data/flowers/1000x1000/39/1684348069_29280239.jpg',
    ),
    Product(
      name: 'Букет белой Гортензией ,Эустомой и пионовидными кустовыми Розами',
      description: 'Прекрасный дизайнерский букет в современном исполнении из свежих срезанных цветов обрадует любого получателя.Наши флористы вкладывают душу в каждый букет.',
      price: 3100,
      imageUrl: 'https://content2.flowwow-images.com/data/flowers/1000x1000/09/1697115764_30404709.jpg',
    ),
    Product(
      name: 'Букет из клубники в шоколаде Красная радуга',
      description: '',
      price: 2994,
      imageUrl: 'https://content3.flowwow-images.com/data/flowers/1000x1000/32/1673083194_4602032.jpg',
    ),
    Product(
      name: 'Красные Розы Россия 21 шт',
      description: 'Хит продаж из красной Розы! Отличный букет, который станет замечательным подарком!',
      price: 3474,
      imageUrl: 'https://content2.flowwow-images.com/data/flowers/1000x1000/75/1685512885_32853975.jpg',
    ),
    Product(
      name: 'Тюльпаны пионовидные «Columbus», 25 шт',
      description: 'Тюльпаны пионовидные Колумбус, букет из 25 штук. У нас на фото они ещё в бутонах, в воде и в тепле быстро раскрываются.Тюльпаны не любят стоять глубоко в воде, но очень быстро пьют воду, не забывайте следить за ее',
      price: 4400,
      imageUrl: 'https://content2.flowwow-images.com/data/flowers/1000x1000/20/1706882925_73295520.jpg',
    ),
    Product(
      name: 'Букет Мари-Клэр',
      description: 'Яркий букет из разноцветных кустовых роз упакованный в дизайнерский крафт и перевязанный атласной лентой. Яркий и стильный букет послужит отличным подарком.- Бесплатная открытка с вашим текстом',
      price: 2590,
      imageUrl: 'https://content2.flowwow-images.com/data/flowers/1000x1000/41/1643537955_34766341.jpg',
    ),
    Product(
      name: 'Миниатюрный букет из клубники и кустовой',
      description: 'Милый букетик в качестве небольшого презента порадует любую получательницу! И осчастливит ее на весь день',
      price: 2513,
      imageUrl: 'https://content2.flowwow-images.com/data/flowers/1000x1000/76/1695715307_81721876.jpg',
    ),
    Product(
      name: 'Лавандовые сны',
      description: 'Гипсофила - 2 шт.Гортензия - 1 шт.Упаковка дизайнерская - 1 шт.пинк мондиаль роза - 3 шт',
      price: 3500,
      imageUrl: 'https://content2.flowwow-images.com/data/flowers/1000x1000/36/1692322048_61821136.jpg',
    ),
    Product(
      name: 'Стильный букет с клубникой',
      description: 'Райское наслаждение 🥥🌴 клубника в белом и молочном шоколаде с кокосовой стружкой , красные розы и огромное ассорти ягод : малина, ежевика , голубика , красная смородина',
      price: 3843,
      imageUrl: 'https://content2.flowwow-images.com/data/flowers/1000x1000/84/1661873869_30843684.jpg',
    ),
    Product(
      name: 'Букет из Пионовидных Кустовых Роз и Эвкалипта',
      description: 'Нежный букет из Пионовидных Кустовых розовых Роз и Эвкалипта в современной дизайнерской упаковке станет отличным подарком для любимой девушки, подруги, сестренки или для себя, чтобы порадовать прекрасными цветами!',
      price: 4979,
      imageUrl: 'https://content3.flowwow-images.com/data/flowers/524x524/95/1690022275_71154495.jpg',
    ),
    Product(
      name: 'Букет из розовой гипсофилы. Букет 120 Buket in Moscow Розовая гипсофила',
      description: 'Воздушный букет из розовой гипсофилы.Идеальный букет, чтобы чей-то день стал особенным.Гипсофила порадует вас своей стойкостью, превращаясь в сухоцвет.',
      price: 2800,
      imageUrl: 'https://content2.flowwow-images.com/data/flowers/1000x1000/52/1656234065_52478652.jpg',
    ),
    Product(
      name: 'Букет из 15 цветов синяя и розовая орхидея дендробиум и гипсофила "Звездное небо-1"',
      description: 'Букет из синей и розовой орхидеи дендробиум с гипсофилой - это очень красивое и редкое сочетание цветов. Такой букет будет выглядеть очень стильно и необычно, и подойдет для подарка на любой праздник.',
      price: 2993,
      imageUrl: 'https://content2.flowwow-images.com/data/flowers/1000x1000/22/1705572319_85658022.jpg',
    ),
    Product(
      name: 'Букет из синих орхидей Космос в руках (мини). Букет 422 ALMOND ROSES',
      description: 'Космические орхидеи и вправду как бесконечная Вселенная - способны открывать перед нами новые грани, обладают каким-то магическим свойством! Они словно притягивают к себе, манят, одурманивают!',
      price: 1990,
      imageUrl: 'https://content2.flowwow-images.com/data/flowers/1000x1000/30/1683629518_42509030.jpg',
    ),
    Product(
      name: 'Букет из клубники в шоколаде 13шт - Spring',
      description: 'Изысканный десерт и прекрасный подарок для близкого человека - свежая отборная клубника в бельгийском шоколаде, приготовленная профессиональными кондитерами!',
      price: 1834,
      imageUrl: 'https://content2.flowwow-images.com/data/flowers/1000x1000/02/1679681695_20901802.jpg',
    ),
    Product(
      name: 'Лунный свет ',
      description: ' Гортензия - 1 шт.Эвкалипт - 3 шт.Лента атласная - 1 шт.Диантус - 5 шт.Роза кустовая пионовидная - 5 шт.Пленка матовая - 4 шт.',
      price: 4560,
      imageUrl: 'https://content2.flowwow-images.com/data/flowers/1000x1000/06/1699289936_10752406.jpg',
    ),
    Product(
      name: 'Букет из оранжевых французских роз Hermosa',
      description: 'Букет из оранжевых французских роз Hermosa привлекает внимание и завораживает своей красотой. Эти розы по своему цвету напоминают малиновый закат, когда небо пронизывается прекрасным оттенком оранжевого, ловя последние лучи солнца. ',
      price: 2660,
      imageUrl: 'https://content2.flowwow-images.com/data/flowers/1000x1000/11/1699018994_56886511.jpg',
    ),
    Product(
      name: 'Ягодная планета',
      description: 'Это эксклюзивная шапка из ягод произведёт фурор гораздо больше чем обычный букет цветов😍 ещё и огромный ассортимент полезных витаминов☀️ вес всего букета 1100 грамм!',
      price: 4950,
      imageUrl: 'https://content2.flowwow-images.com/data/flowers/1000x1000/55/1684735938_64738455.jpg',
    ),
    Product(
      name: 'Красные розы с космическими орхидеями (мини). Букет 418 ALMOND ROSES',
      description: 'Идеальный букет для комплимента в начале отношений. Он очарует и покорит любую девушку! Принесет в зарождающиеся отношения романтику и застенчивость.',
      price: 1957,
      imageUrl: 'https://content2.flowwow-images.com/data/flowers/1000x1000/33/1683565518_41081233.jpg',
    ),
    Product(
      name: 'Белая гортензия, розы и эустома в букете «Лирика»',
      description: 'УБЕДИТЕЛЬНО просим Вас не заказывать букет за неделю на праздники. Праздничный ассортимент будет другим. Или мы вынуждены будем хранить букет неделю со дня заказа, чтобы выполнить свои обязательства',
      price: 3700,
      imageUrl: 'https://content2.flowwow-images.com/data/flowers/1000x1000/70/1698334257_62678070.jpg',
    ),
    Product(
      name: 'Подсолнухи 9шт. Букет F057 Цветы Столицы',
      description: 'Букет ярких солнечных подсолнухов выглядит оригинально и стильно! Он точно удивить получателя',
      price: 3267,
      imageUrl: 'https://content3.flowwow-images.com/data/flowers/524x524/40/1687616121_30530940.jpg',
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Каталог товаров',
              style: TextStyle(fontSize: 20.0),
            ),
            Spacer(), // Разделитель для распределения пространства
            Expanded(
              flex: 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Поиск...',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth / 15), // Разделитель
                  IconButton(
                    color: Colors.red,
                    icon: Icon(Icons.favorite), // Иконка избранного
                    onPressed: () {
                      // Переход на страницу избранного при нажатии на кнопку избранного
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FavoritesPage()), // Переход на страницу избранного
                      );
                    },
                  ),
                  SizedBox(width: screenWidth / 30), // Разделитель
                  IconButton(
                    color: Colors.blue,
                    icon: Icon(Icons.shopping_cart), // Иконка корзины
                    onPressed: () {
                      // Переход на страницу корзины при нажатии на кнопку корзины
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartPage(cartItems: Cart.cartItems)),
                      );
                    },
                  ),
                  SizedBox(width: screenWidth / 30), // Разделитель
                  IconButton(
                    color:Colors.white,
                    icon: Icon(Icons.person), // Иконка профиля
                    onPressed: () {
                      // Переход на страницу профиля при нажатии на кнопку профиля
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()), // Используем ProfilePage
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        color: Colors.grey, // Устанавливаем серый цвет заднего фона
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Количество столбцов в сетке
                  childAspectRatio: 0.8, // Соотношение сторон элементов
                  crossAxisSpacing: 8.0, // Горизонтальный отступ между элементами
                  mainAxisSpacing: 8.0, // Вертикальный отступ между элементами
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final product = products[index];
                    return Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Image.network(
                                product.imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              product.name,
                              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              product.description,
                              style: TextStyle(fontSize: 16.0),
                            ),
                            SizedBox(height: 8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${product.price} руб.',
                                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.shopping_cart),
                                      onPressed: () {
                                        Cart.addItem(product); 
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(content: Text('Добавлено в корзину: ${product.name}')),
                                        );
                                      },
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.favorite),
                                      onPressed: () {
                                        Cart.addFavorite(product); // Добавление продукта в избранное
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(content: Text('Добавлено в избранное: ${product.name}')),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: products.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


