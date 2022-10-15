import 'package:flutter/material.dart';
import 'package:hello_world/secondpage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color currentColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello, World!'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // print('teste');
            /**
                setState(() {
                this.currentColor = this.currentColor == Colors.grey ? Colors.black : Colors.grey;
                });
             **/
            Navigator.pushNamed(context, '/second_page');
          },
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: this.currentColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade700,
                    blurRadius: 10,
                  )
                ]),
            child: Text(
              "Workshop de Flutter no Katie's Month",
              style: TextStyle(fontSize: 40, color: Colors.purple),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
