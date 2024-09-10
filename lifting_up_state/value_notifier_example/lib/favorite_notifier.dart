// Copyright 2024 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class FavoriteNotifier extends ValueNotifier<List<String>> {
  FavoriteNotifier(List<String> value) : super(value);

  // Add or remove favorites depending on their status
  void toggleFavorite(String item) {
    if (!value.contains(item)) {
      value.add(item);
    } else {
      value.remove(item);
    }

    notifyListeners();
  }

  // Clear the list
  void clearFavorites() {
    value.clear();
    notifyListeners();
  }
}
