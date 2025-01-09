import 'package:bottomnavbar_darsi/providers/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeScreenProvider>(
        builder: (context, provider, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  provider.decrementCounter();
                },
                icon: Icon(
                  Icons.remove,
                ),
              ),
              Text(provider.counter.toString()),
              IconButton(
                onPressed: () {
                  provider.incrementCounter();
                },
                icon: Icon(
                  Icons.add,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
