import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home : Quotes(),
  ));}
class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List <Quote> quotes =  [
    Quote(text:'Happiness can be found in even the darkest of times if only one remembers to turn on the light ', author:'-Albus Dumbledore'),
    Quote(text:'It is not you abilities that define you, it is your choices', author:'-Albus Dumbledore'),
    Quote(text:'Always', author:'-Severus Snape')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('QUOTES'),
      ),
      body: Column(
        children: quotes.map((quote){
              return QuoteCard(
                  quotes :quote,
                  delete: (){
                    setState(() {
                      quotes.remove(quote);
                    });
                  }
              );
            }
        ).toList(),
      ),
    );
  }
}

