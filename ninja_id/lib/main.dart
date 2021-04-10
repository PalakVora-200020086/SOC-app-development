import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaID(),
  ));
}
class NinjaID extends StatefulWidget {
  @override
  _NinjaIDState createState() => _NinjaIDState();
}

class _NinjaIDState extends State<NinjaID> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text('Ninja ID Card',
        style: TextStyle(
          color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget> [
         CircleAvatar(
           backgroundImage: NetworkImage('https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
           radius: 40.0,
         ),
          Text(
          'NAME',
           style: TextStyle(
            color: Colors.deepOrange,
           ),
          ),
            Text(
              'xyz',
              style: TextStyle(
                color: Colors.lightGreen,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'level',
              style: TextStyle(
                color: Colors.deepOrange,
              ),
            ),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.lightGreen,
              ),
            ),
          ],
         ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level++;
          });
        },
        backgroundColor: Colors.pinkAccent,
      ),
    );
  }
}


