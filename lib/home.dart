import 'package:chat_app/models/chats.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context) {
    List<Chat> chats=[
      Chat(
        image: 'assets/m2.jpg',
        name: 'Mahmoud Mrzban',
        msg: 'Where are you?',
        icon: const Icon(Icons.check_circle,
        color: Colors.lightBlue,
        ),
         ),
         Chat(
        image: 'assets/m2.jpg',
        name: 'Mahmoud Mrzban',
        msg: 'Where are you?',
        icon: const Icon(Icons.check_circle,
        color: Colors.lightBlue,
        ),
         ),
         Chat(
        image: 'assets/m2.jpg',
        name: 'Mahmoud Mrzban',
        msg: 'Where are you?',
        icon: const Icon(Icons.check_circle,
        color: Colors.lightBlue,
        ),
         ),
         Chat(
        image: 'assets/m2.jpg',
        name: 'Mahmoud Mrzban',
        msg: 'Where are you?',
        icon: const Icon(Icons.check_circle,
        color: Colors.lightBlue,
        ),
         ),
         Chat(
        image: 'assets/m2.jpg',
        name: 'Mahmoud Mrzban',
        msg: 'Where are you?',
        icon: const Icon(Icons.check_circle,
        color: Colors.lightBlue,
        ),
         ),
         Chat(
        image: 'assets/m2.jpg',
        name: 'Mahmoud Mrzban',
        msg: 'Where are you?',
        icon: const Icon(Icons.check_circle,
        color: Colors.lightBlue,
        ),
         ),
         Chat(
        image: 'assets/m2.jpg',
        name: 'Mahmoud Mrzban',
        msg: 'Where are you?',
        icon: const Icon(Icons.check_circle,
        color: Colors.lightBlue,
        ),
         ),
         Chat(
        image: 'assets/m2.jpg',
        name: 'Mahmoud Mrzban',
        msg: 'Where are you?',
        icon: const Icon(Icons.check_circle,
        color: Colors.lightBlue,
        ),
         ),
         Chat(
        image: 'assets/m2.jpg',
        name: 'Mahmoud Mrzban',
        msg: 'Where are you?',
        icon: const Icon(Icons.check_circle,
        color: Colors.lightBlue,
        ),
         ),
         Chat(
        image: 'assets/m2.jpg',
        name: 'Mahmoud Mrzban',
        msg: 'Where are you?',
        icon: const Icon(Icons.check_circle,
        color: Colors.lightBlue,
        ),
         ),
         Chat(
        image: 'assets/m2.jpg',
        name: 'Mahmoud Mrzban',
        msg: 'Where are you?',
        icon: const Icon(Icons.check_circle,
        color: Colors.lightBlue,
        ),
         ),
         Chat(
        image: 'assets/m2.jpg',
        name: 'Mahmoud Mrzban',
        msg: 'Where are you?',
        icon: const Icon(Icons.check_circle,
        color: Colors.lightBlue,
        ),
         ),
    ];
    return  PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title:  const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/Mrzban.jpg'),
            ),
            SizedBox(
                width: 20,
              ),
            Text('Chats',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
            ],
          ),
          actions: const [
            Icon(Icons.camera_alt_outlined ,
            size: 30,
            color: Colors.white,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.video_call_rounded ,
            size: 30,
            color: Colors.white,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.edit,
            size: 30,
            color: Colors.white,
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Card(
                color: Colors.grey,
                    margin: EdgeInsets.only(top: 40, left: 30, right: 30,
                    ),
                    child : Padding(
                      padding: EdgeInsets.all(8),
                    child:  Row(
                      children: [
                        SizedBox(
                        width: 15,
                    ),
                    Icon(Icons.search_outlined),
                  ],
                ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 150,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, i) {
                    return const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: CircleAvatar(
                        radius: 42,
                        backgroundColor: Colors.blue,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/Mrzban.jpg'),
                          radius: 40,
                        ),
                      ),
                    );
                  }
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: chats.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, i) {
                    return ListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/Mrzban.jpg'),
                        ),
                      title: Text(chats[i].name,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      ),
                      subtitle: Row(
                        children: [
                        Text(chats[i].msg,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300
                        ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('2:30 PM' ,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        )
                        ]
                      ),
                      trailing: chats[i].icon
                    );
                  },
                  ),
              ),
            ),
          ],
        ),
      
        ),
    );
      

  }
}