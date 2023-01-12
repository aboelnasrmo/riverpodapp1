import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'prov.g.dart';

@riverpod
int testProvider(ref) {
  return 4;
}

@riverpod
String name(ref) {
  return 'MO';
}
