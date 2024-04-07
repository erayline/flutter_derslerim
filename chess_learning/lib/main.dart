import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

//eray yapımı

class Quote{
  String text;
  String author;

  Quote(this.text,this.author);
}

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quote> quotes = [
    Quote("hızlı koşan atın boku seyrek düşermiş","ben"),
    Quote("hızlı koşan atın boku seyrek düşermiş","ben"),
    Quote("hızlı koşan atın boku seyrek düşermiş","ben"),
    Quote("hızlı koşan atın boku seyrek düşermiş","ben"),
    Quote("plansız bir hedef sadece dilekten ibarettir","yine ben")];


  Widget kart(Quote quote){
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Card(
        color: Color.fromARGB(255, 135, 173, 131),
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(quote.text),
              SizedBox(height: 8),
              Text(quote.author),
              IconButton(onPressed: (){
                setState(() {
                  quotes.remove(quote);
                });}, icon:Icon(Icons.delete_forever_rounded))
              ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text("alıntılar"),centerTitle: true,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote)=> kart(quote)).toList(),
      ),
    );
  }
}
