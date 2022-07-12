import 'package:flower_app/pages/checkout_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/cart.dart';


class AppBarAction extends StatelessWidget {
  const AppBarAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartInstance = Provider.of<Cart>(context);
    return  Row(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 24,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(210, 9, 223, 77),
                    shape: BoxShape.circle),
                child: Text(
                  "${cartInstance.selectedProducts.length}",
                  style: const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Checkout(),
                  ),
                );
              },
              icon: const Icon(Icons.add_shopping_cart),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Text(
            "\$ ${cartInstance.price}",
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
    ;
  }
}



