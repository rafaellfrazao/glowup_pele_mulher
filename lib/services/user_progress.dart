import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProgress extends ChangeNotifier {
  // Alterado para iniciar vazio
  final Set<String> _concludedModules = {};

  UserProgress() {
    _loadProgress();
  }

  double get progressPercentage {
    if (_concludedModules.isEmpty) return 0.0;
    return _concludedModules.length / 4.0;
  }

  int get concludedCount => _concludedModules.length;

  bool isConcluded(String moduleId) {
    return _concludedModules.contains(moduleId);
  }

  Future<void> toggleModule(String moduleId) async {
    if (_concludedModules.contains(moduleId)) {
      _concludedModules.remove(moduleId);
    } else {
      _concludedModules.add(moduleId);
    }
    notifyListeners();
    await _saveProgress();
  }

  Future<void> resetProgress() async {
    _concludedModules.clear();
    notifyListeners();
    await _saveProgress();
  }

  Future<void> _saveProgress() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('concluded_modules', _concludedModules.toList());
  }

  Future<void> _loadProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final savedList = prefs.getStringList('concluded_modules');

    // Se houver dados salvos anteriormente, carrega. Se não, limpa tudo.
    if (savedList != null) {
      _concludedModules.clear();
      _concludedModules.addAll(savedList);
      notifyListeners();
    } else {
      // Garante que se não houver nada salvo, o SharedPreferences comece limpo
      await prefs.setStringList('concluded_modules', []);
    }
  }
}

final userProgress = UserProgress();