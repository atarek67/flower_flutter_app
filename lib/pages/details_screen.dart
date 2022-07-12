// ignore_for_file: unnecessary_string_interpolations, duplicate_ignore

import 'package:flower_app/provider/cart.dart';
import 'package:flower_app/shared/appBar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/item.dart';
import '../shared/constants.dart';

class Details extends StatefulWidget {
  Item product;
  Details({Key? key, required this.product}) : super(key: key);
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // const Details({Key? key}) : super(key: key);
  bool isShowMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions:const [
          AppBarAction(),
        ],
        backgroundColor: appbarGreen,
        title: const Text('Details'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(widget.product.imgPath),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                '\$ ${widget.product.price}',
                style: const TextStyle(
                    fontSize: 19.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(3),
                    //color: Colors.green,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green,
                    ),
                    child: const Text(
                      'New',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                        size: 28.0,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                        size: 28.0,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                        size: 28.0,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                        size: 28.0,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[600],
                        size: 28.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 90.0,
                  ),
                  Row(
                    // ignore: duplicate_ignore
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 26.0,
                        color: appbarGreen,
                      ),
                      // ignore: unnecessary_string_interpolations
                      Text(
                        '${widget.product.location}',
                        style: const TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  'Details: ',
                  style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). The biological function of a flower is to facilitate reproduction, usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing (fusion of sperm and eggs from different individuals in a population) resulting from cross-pollination or allow selfing (fusion of sperm and egg from the same flower) when self-pollination occurs. ',
                  style: const TextStyle(
                      fontSize: 17.0, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  maxLines: isShowMore ? 13 : null,
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isShowMore = !isShowMore;
                  });
                },
                child: Text(isShowMore ? 'Show Less' : 'Show More'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
