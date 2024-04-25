import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController txtNPM = TextEditingController();
  TextEditingController txtNama = TextEditingController();
  TextEditingController txtMataKuliah = TextEditingController();
  TextEditingController txtNilai = TextEditingController();

  String NPM ='';
  String Nama = '';
  String Matakuliah = '';
  double nilai= 0.0;
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget Flutter'),
        // style: TextStyle(color :Colors.blue),
        backgroundColor: Colors.red,
      ),
      body: Padding(
      padding:const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: txtNPM,
              decoration:const InputDecoration(hintText: 'Masukka NPM'),),
            TextField(
              controller: txtNama,
              decoration:const InputDecoration(hintText: 'Masukka Nama'),),
            TextField(
              controller: txtMataKuliah,
              decoration:const InputDecoration(hintText: 'Masukka Mata Kuliah'),),
            TextField(
              controller: txtNilai,
              decoration:const InputDecoration(hintText: 'Masukkan Nilai'),), 
          
          // const buat jarak antara tombol dengan tulisan       
          OutlinedButton(onPressed: ()=>{
            setState(() {
              NPM = txtNPM.text;
              Nama = txtNama.text;
              Matakuliah = txtMataKuliah.text;
              nilai = double.parse(txtNilai.text);
            })
          },
          child: const Text('Submit'),),
          const SizedBox(height: 10,),
          Text('NPM : $NPM'),
          Text('Nama : $Nama'),
          Text('Matakuliah: $Matakuliah'),
          Text('Nilai: $nilai'),
        ],),
      ),
    );
  }
}