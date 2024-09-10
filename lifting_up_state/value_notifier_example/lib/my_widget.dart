// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:value_notifier_example/favorite_count.dart';
import 'package:value_notifier_example/favorite_state.dart';

class MyWidget extends StatelessWidget {
  final List<String> fruits = ['Mango', 'Pear', 'Cashew', 'Grape', 'Guava', 'Coconut', 'Orange'];

  @override
  Widget build(BuildContext context) {
    final favoriteNotifier = FavoriteState.of(context).favoriteNotifier;

    return Scaffold(
      appBar: AppBar(title: Text('Favorite Fruits'), actions: [
        Icon(Icons.favorite),
        FavoriteCount(),
      ]),
      body: ListView.separated(
          itemCount: fruits.length,
          separatorBuilder: (context, _) => Divider(),
          itemBuilder: (context, index) {
            final fruit = fruits[index];
            return ValueListenableBuilder(
                valueListenable: favoriteNotifier,
                builder: (context, List<String> value, _) {
                  return ListTile(
                    leading: Icon(Icons.local_florist, color: value.contains(fruit) ? Colors.orange : Colors.grey[600]),
                    title: Text(fruit),
                    onTap: () {
                      favoriteNotifier.toggleFavorite(fruit);
                    },
                  );
                });
          }),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.clear),
          onPressed: () {
            favoriteNotifier.clearFavorites();
          }),
    );
  }
}
