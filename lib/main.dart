import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_getx/models/model_orang.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

//memanggil model
  var orang = Orang(nama: "Zaki", umur: 25).obs;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Obx(
          () => Text(
            //${orang.nama} panggil classs yang sudah diinisiasi
            'nama saya ${orang.value.nama}',
            style: const TextStyle(fontSize: 35),
          ),
        )),
        //button untuk mengubah nama yang ada dalam class menjadi uppercase
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            orang.update((_) {
              orang.value.nama = orang.value.nama.toString().toUpperCase();
            });
          },
        ),
      ),
    );
  }
}
