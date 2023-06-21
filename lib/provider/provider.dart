import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final randomValueProvider = Provider<int>((ref) {
  final random = ref.watch(randomProvider);
  return random.nextInt(100) +50;
});

final randomProvider = Provider<Random>((ref) => Random());

class RandomValuePage extends ConsumerWidget {
  const RandomValuePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomValue = ref.watch(randomValueProvider);
    return Scaffold(
      appBar: AppBar(
        title: const  Text('Random Value'),
      ),
      body: Center(
        child: Text(
          'Random Value: $randomValue',
          style: const  TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

