import 'package:flutter/material.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
              width: MediaQuery.of(context).size.width * 9.5,
              height: MediaQuery.of(context).size.height * 9.5,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    color: Colors.orange[200],
                    child: const Center(
                      child: Text('products screen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const HomeViewBody()
                ],
              )),
        ),
      ),
    );
  }
}
