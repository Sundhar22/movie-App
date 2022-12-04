// ignore_for_file: avoid_print


import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:pedantic/pedantic.dart';
import 'package:movie/common/import_files.dart';
import 'di/get_it.dart' as get_it;

void main() async {
  unawaited(get_it.init());
  GetTrending getTrending = get_it.getItInstance<GetTrending>();

  final Either<AppError, List<MovieEntity>> movieResponse =
      await getTrending(NoParams());
  movieResponse.fold(
    (l) => {print('Error'), print(l)},
    (r) => {
      print(''),
      print('Trending List '),
      print(r),
    },
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
