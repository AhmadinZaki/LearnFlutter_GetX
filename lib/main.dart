import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './controllers/controller_orang.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

//memanggil controller
  final orangController = Get.put(OrangController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Obx(
          () => Text(
            //${orangController.orang.nama} panggil controller yang sudah diinisiasi
            'nama saya ${orangController.orang.nama}',
            style: const TextStyle(fontSize: 35),
          ),
        )),
        //button untuk mengubah nama yang ada dalam class menjadi uppercase
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            orangController.changeUpperCase();
          },
        ),
      ),
    );
  }
}
