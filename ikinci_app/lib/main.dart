import 'package:flutter/material.dart';
import 'package:ikinci_app/pages/choose_location.dart';
import 'package:ikinci_app/pages/home.dart';
import 'package:ikinci_app/pages/loading.dart';

// normalde home demek yerine şimdi route kullanacağız. initialRoute: '/home' şeklinde. diğer türlü home ile routes kısmındaki default '/' route'u çakışıyor. bunu override edebilmek için initialRoute:'/home' diyeceğiz.
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute:'/home',
  routes: {
    '/':(context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation()
  },
));