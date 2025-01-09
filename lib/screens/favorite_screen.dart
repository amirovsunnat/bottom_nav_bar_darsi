import 'package:bottomnavbar_darsi/providers/favorite_screen_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<FavoriteScreenProvider>(
      builder: (context, favProvider, child) => Column(
        children: [
          IconButton(
            onPressed: () {
              favProvider.counterIncrement();
            },
            icon: Icon(Icons.add),
          ),
          Text(favProvider.counter.toString())
        ],
      ),
    ));
  }
}
