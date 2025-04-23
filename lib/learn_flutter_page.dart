import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => LearnFlutterPageState();
}

class LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/abc.png'),
          const SizedBox(height: 10),
          const Divider(color: Colors.black),
          Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(20.0), 
            color: Colors.amberAccent,
            width: double.infinity,
            child: const Center(
              child:  Text(
                'this is text widget',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
             Icon(
            Icons.local_fire_department,
            ),
            Text('Row Widget'),
             Icon(
            Icons.local_fire_department,
            ),
          ],)
        ],
      ),
    );
  }
}
