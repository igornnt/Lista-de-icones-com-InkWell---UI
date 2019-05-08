import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Categoria()));

class Categoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
          children: <Widget>[
            myIcons(Icon(Icons.cake,size: 60.0, color: Colors.deepOrange),Colors.deepOrange),
            myIcons(Icon(Icons.access_alarm,size: 60.0, color: Colors.teal), Colors.teal),
            myIcons(Icon(Icons.add,size: 60.0, color: Colors.deepPurple,), Colors.deepPurple),
            myIcons(Icon(Icons.print,size: 60.0, color: Colors.purpleAccent,), Colors.purpleAccent),
          ],
        ),
    );
  }
}

InkWell myIcons(Icon icon, Color cor){
  return InkWell(
    onTap: () => { print('I was tapped!')},
    highlightColor: cor,
    borderRadius: BorderRadius.circular(40.0),
    child: Container(
        height: 100.0,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: icon,
            ),
          ],
        )
    ),
  );
}