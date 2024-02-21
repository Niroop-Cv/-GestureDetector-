import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key,required this.name});

final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
      ),
      body: Text(name),
      
    );
  }
}
