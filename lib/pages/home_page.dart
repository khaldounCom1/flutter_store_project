import 'package:flutter/material.dart';
import '../widgets/product_card.dart';
import '../product_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  List<Product> _dummy() => [
        Product(
          name: 'قهوة يمنية',
          price: 8.50,
          minutes: 12,
          rating: 4.6,
        ),
        Product(
          name: 'عسل سدر',
          price: 25.00,
          minutes: 5,
          rating: 4.9,
        ),
        Product(
          name: 'تمور برني',
          price: 10.00,
          minutes: 18,
          rating: 4.3,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    final items = _dummy();
    return Scaffold(
      appBar: AppBar(
        title: const Text('المتجر'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, i) => ProductCard(product: items[i]),
      ),
    );
  }
}
