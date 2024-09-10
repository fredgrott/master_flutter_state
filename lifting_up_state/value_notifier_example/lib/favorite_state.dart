// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:value_notifier_example/favorite_notifier.dart';

class FavoriteState extends InheritedWidget {
  final FavoriteNotifier favoriteNotifier;

  FavoriteState({required this.favoriteNotifier, required Widget child}) : super(child: child);

  static FavoriteState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType()!;
  }

  @override
  bool updateShouldNotify(FavoriteState oldWidget) {
    return oldWidget.favoriteNotifier.value != favoriteNotifier.value;
  }
}
