import 'package:flutter/material.dart';
import '../models/plant_model.dart';

class AppState extends ChangeNotifier {
  bool _isDarkMode = false;
  final List<Plant> _favoritePlants = [];

  bool get isDarkMode => _isDarkMode;
  List<Plant> get favoritePlants => List.unmodifiable(_favoritePlants);

  void toggleTheme(bool isDark) {
    _isDarkMode = isDark;
    notifyListeners();
  }

  bool isFavorite(Plant plant) {
    return _favoritePlants.any((p) => p.id == plant.id);
  }

  void toggleFavorite(Plant plant) {
    if (isFavorite(plant)) {
      _favoritePlants.removeWhere((p) => p.id == plant.id);
    } else {
      _favoritePlants.add(plant);
    }
    notifyListeners();
  }
}
