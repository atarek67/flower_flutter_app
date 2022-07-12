// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flower_app/model/item.dart';
import 'package:flower_app/pages/details_screen.dart';
import 'package:flower_app/pages/personal_info.dart';
import 'package:flower_app/provider/cart.dart';
import 'package:flower_app/shared/appBar.dart';
import 'package:flower_app/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'checkout_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartInstance = Provider.of<Cart>(context);
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const UserAccountsDrawerHeader(
                  accountName: Text("Ahmed Tarek",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      )),
                  accountEmail: Text("azayn1143@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                      radius: 55,
                      backgroundImage:
                          AssetImage("assets/images/SoraTik1.jpeg")),
                  decoration: BoxDecoration(
                    color: appbarGreen,
                    //   image: DecorationImage(
                    // fit: BoxFit.cover,
                    // image: AssetImage("assets/images/flower.jpg"))
                  ),
                ),
                ListTile(
                    title: const Text("Home"),
                    leading: const Icon(Icons.home),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ),
                      );
                    }),
                ListTile(
                    title: const Text("My products"),
                    leading: const Icon(Icons.add_shopping_cart),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  Checkout(),
                        ),
                      );
                    }),
                ListTile(
                    title: const Text("About"),
                    leading: const Icon(Icons.help_center),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PersonalInfo(),
                        ),
                      );
                    }),
                ListTile(
                    title: const Text("Logout"),
                    leading: const Icon(Icons.exit_to_app),
                    onTap: () {}),
              ],
            ),
            Container(
              //margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.only(bottom: 12),
              child: const Text(
                "Developed by Ahmed Tarek © 2022",
                style: TextStyle(fontSize: 16, color: Colors.black26),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          AppBarAction(),
        ],
        backgroundColor: appbarGreen,
        title: const Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 33),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(product: items[index]),
                    ),
                  );
                },
                child: GridTile(
                  footer: GridTileBar(
// backgroundColor: Color.fromARGB(66, 73, 127, 110),

                    trailing:

                           IconButton(
                              color: const Color.fromARGB(255, 62, 94, 70),
                              onPressed: () {
                                cartInstance.add(items[index]);
                              },
                              icon: const Icon(Icons.add)
                          ),



                    leading: Text(items[index].price.toString()),

                    title: const Text(
                      "",
                    ),
                  ),
                  child: Stack(children: [
                    Positioned(
                      top: -3,
                      bottom: -9,
                      right: 0,
                      left: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(55),
                        child: Image.asset(items[index].imgPath),
                      ),
                    ),
                  ]),
                ),
              );
            }),
      ),
    );
  }
}
