import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpodapp1/prov.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondPage(),
    );
  }
}

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    final int value = ref.watch(testProviderProvider);
    final String name = ref.watch(nameProvider);
    final DateTime date = ref.watch(myDateProvider);
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(value.toString()),
              Text(name),
              Text(date.toString()),
            ],
          ),
        ],
      ),
    );
  }
}

//same as statful
class SecondPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clockProvider = StateNotifierProvider<Clock, DateTime>((ref) {
      return Clock();
    });
    final DateTime myClock = ref.watch(clockProvider);
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(myClock.toString()),

              // Text(value.toString()),
              // Text(name),
              // Text(date.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
