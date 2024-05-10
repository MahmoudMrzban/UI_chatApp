import 'package:chat_app/home.dart';
import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Container(
              width: double.infinity,
              height: 200,
              child: Image.asset('assets/chat.gif'),
            ),
            const Text(' Welcome To Chat App',
            style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                fixedSize: const Size(120, 50)
              ),
              onPressed: (){
                Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: const Icon(Icons.arrow_forward),
            )
            
          ],
        ),
      ),
    );
  }
}