// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:store_api/data/models/product_model.dart';
import 'package:store_api/features/home/presentation/views/update_product.dart';

class CardItem extends StatelessWidget {
  CardItem({
    super.key,
    required this.product,
  });

  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProduct.routeName,
            arguments: product);
      },
      child: Container(
          // width: double.infinity,
          // height: 500,
          color: Colors.red[100],
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.amber[300],
                // todo image here
                child: Image.network(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
              // ignore: prefer_const_constructors
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      product.title.substring(0, 6),
                      style: const TextStyle(),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${product.price.toString()}',
                    ),
                    const Icon(Icons.favorite),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
