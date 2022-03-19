
import 'package:argedik_prototip/feature/onboard/on_board_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() => runApp(const ProviderScope(child:MyApp()) );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        fontFamily: "Inter",
        primarySwatch: Colors.blue,
      ),
      home:  const OnBoardView(),
    );
  }
}