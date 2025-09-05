import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 4, child:  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('WhatsApp',style: TextStyle(color: Colors.white),),
          bottom: TabBar(
              tabs:[
                Tab(
                    child:  Icon(Icons.camera_alt,color: Colors.white,)
                ),
                Tab(

                  child:  Text("Chats",style: TextStyle(color: Colors.white)
                  ),),
                Tab(
                  child:  Text("Status",style: TextStyle(color: Colors.white),),
                ),
                Tab(
                  child:  Text("Calls",style: TextStyle(color: Colors.white),
                ),),


              ],
          ),
          actions: [
            SizedBox(
              width: 10,
            ),
            Icon(Icons.search,color: Colors.white,),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(

                icon: Icon(Icons.more_horiz,color: Colors.white),
                itemBuilder: (context)=>[
                  PopupMenuItem(
                      value: 'Value 1',
                      child: Text('New Group'),
                  ),
                  PopupMenuItem(
                    value: 'Value 2',
                    child: Text('Settings'),
                  ),
                  PopupMenuItem(
                    value: 'Value 3',
                    child: Text('Log out'),
                  ),


                ]

            )

          ],
        ),
        body: TabBarView(children:[
          Center(child: Text("Click New Picture")),
          ListView.builder(
              itemCount: 20,
              itemBuilder: (context,index){
                return ListTile(
                  title: Text('Jhon'),
                  subtitle: Text("hey ! how you doing"),
                  trailing: Text('10:43 PM'),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/634021/pexels-photo-634021.jpeg'),
                  ),
                );

          }),
          ListView.builder(
              itemCount: 20,
              itemBuilder: (context,index){
                return ListTile(
                  title: index/2==0?Text('Jhon') : Text('Ahmed ali'),
                  subtitle:index/2==0? Text("1 hour ago"):Text('30 minutes ago'),
                  leading: Container(
                    decoration: BoxDecoration(
                    shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.green,
                        width: 3,
                      )
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/634021/pexels-photo-634021.jpeg'),

                    ),
                  ),
                );

              }),
          ListView.builder(
              itemCount: 20,
              itemBuilder: (context,index){
                return ListTile(
                  title: index/2==0?Text('Jhon'):Text('Ahmed ali'),
                  subtitle:index/2==0?Text('You missed a audio call'):Text('You missed a video call'),
                  trailing: index/2==0?Icon(Icons.call):Icon(Icons.video_call),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/634021/pexels-photo-634021.jpeg'),
                  ),
                );

              }),

        ]

        ),

      ),)

    );
  }
}
