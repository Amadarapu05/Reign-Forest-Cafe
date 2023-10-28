import 'package:flutter/material.dart';
import 'package:nhss_reign_forest_cafe/data/providers/item_provider.dart';
import 'package:nhss_reign_forest_cafe/data/repositories/item_repository.dart';
import 'package:nhss_reign_forest_cafe/firebase_options.dart';
import 'package:nhss_reign_forest_cafe/logic/item/item_bloc.dart';
import 'package:nhss_reign_forest_cafe/logic/item/item_event.dart';
import 'package:nhss_reign_forest_cafe/presentation/home/home.dart';
import 'package:nhss_reign_forest_cafe/presentation/store/store.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Material(child: Home()),
    );
  }
}
