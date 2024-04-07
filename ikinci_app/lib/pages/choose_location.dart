import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  //asyncronüs yaptık koda async yazarak.


  //build kısmı her güncellemede tekrar inşaa edilir çalışır
  //initState ise sayfa ilk yüklendikten sonra daha çalışmaz
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text('choose a location'),
        centerTitle: true,
      ),
      body: ElevatedButton(onPressed: (){
        setState(() {
          counter+=1;
        });
      }, child: Text('${counter}'),),
    );
  }
}