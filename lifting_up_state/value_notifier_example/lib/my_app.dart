// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:value_notifier_example/favorite_notifier.dart';
import 'package:value_notifier_example/favorite_state.dart';
import 'package:value_notifier_example/my_widget.dart';

class MyApp extends StatelessWidget {
  final List<String> favoriteList = [];
  @override
  Widget build(BuildContext context) {
    return FavoriteState(
      favoriteNotifier: FavoriteNotifier(favoriteList),
      child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
          home: MyWidget()),
    );
  }
}
