import 'package:flutter/material.dart';
import 'package:praktikumuiux_7020230002/models/product_model.dart';
import 'package:praktikumuiux_7020230002/widgets/product_card.dart';

class ProductGridScreen extends StatelessWidget {
  const ProductGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Produk Terbaru",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.75,
              ),
              itemCount: dummyProducts.length,
              itemBuilder: (context, index) {
                return ProductCard(product: dummyProducts[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
