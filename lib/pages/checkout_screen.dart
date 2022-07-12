import 'package:flower_app/model/item.dart';
import 'package:flower_app/provider/cart.dart';
import 'package:flower_app/shared/appBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../shared/constants.dart';
import 'home.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartInstance = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: const Text('Checkout'),
        actions: const [
          AppBarAction(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            SizedBox(
              height: 560.0,
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: cartInstance.selectedProducts.length,
                itemBuilder: (context, index) {
                  return  Card(
                    child: ListTile(
                      subtitle: Text("\$${cartInstance.selectedProducts[index].price} - ${cartInstance.selectedProducts[index].location}"),
                      leading: CircleAvatar(backgroundImage: AssetImage(cartInstance.selectedProducts[index].imgPath),),
                      title: Text(cartInstance.selectedProducts[index].name),
                      trailing: IconButton(
                          onPressed:(){
                            cartInstance.remove(cartInstance.selectedProducts[index]);
                          },
                          icon: const Icon(Icons.remove),
                    ),
                  ),
                  );
                }
              ),
            ),
              TextButton(
                  onPressed: () {
                  },
                  child:  Padding(
                    padding:  const EdgeInsets.all(5.0),
                    child:  Text('Pay ${cartInstance.price}',
                        style: const TextStyle(
                          backgroundColor: Colors.orange,
                            color: Colors.black, fontSize: 24)),
                  )
              ),

          ],
        ),
      ),
    );
  }
}
