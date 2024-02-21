import 'package:first_clone/home2.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});
  TextEditingController a = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // leadingWidth: 250,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(08.0),
            child: TextFormField(
              controller: a,
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                hintStyle: TextStyle(fontSize: 20),
                hintText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Home2(
                name: a.text,
              ),
            )),
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(10)),
            ),
          )
        ],
      ),
    );
  }
}
