// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Messenger_Screen extends StatelessWidget {
  const Messenger_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,elevation: 0.0,titleSpacing: 20.0,
      title: const Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/person.jpg"),
          ),
          SizedBox(
            width: 10,
          ),
          Text("Chats",style: TextStyle(color: Colors.black),)
        ],
      ),
      actions: [
        IconButton(onPressed: () {
          
        },
         icon: const CircleAvatar(
          radius: 20,
          child:  Icon(Icons.camera_alt_sharp,size: 20,color: Colors.black,)
         )),
          IconButton(onPressed: () {
          
        },
         icon: const CircleAvatar(
          radius: 20,
          child:  Icon(Icons.edit,size: 20,color: Colors.black,)
         ))
      ],
    ),
    body:Padding(
      padding: const EdgeInsets.all(20.0),
      child:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: SearchController(),
              decoration: InputDecoration(
                fillColor: Colors.black,
                hoverColor: Colors.black,
                border: InputBorder.none,
                prefixIcon:Icon(Icons.search),
                hintText: "Search",
              ),
              keyboardType: TextInputType.text,
              onChanged: (value) {
              },
              onFieldSubmitted: (value) {              
              },
      
            ),
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(30),
            //     color: Colors.grey[300],
            //   ),
            //   padding: EdgeInsets.all(5.0),
            //   child: Row(
            //     children: [
            //       Icon(Icons.search),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Text("Search",style: TextStyle(fontSize: 20),),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 20,
            ),
           Container(
            height: 100.0,
             child:ListView.separated(
              scrollDirection: Axis.horizontal, 
              itemBuilder: (context, index) =>buildStoryItem(), 
              separatorBuilder: (context, index) => SizedBox(width: 20,),
               itemCount: 10),  
           ),
           SizedBox(height: 20,),
           ListView.separated( 
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => buildChatItem(context),
             separatorBuilder: (context, index) => SizedBox(width: 20,),
              itemCount: 15)
      
          ],
        ),
      ),
    ) ,
    );
    
  }
  
  
}
  Widget buildStoryItem() =>
      Container(
        width: 60.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("assets/person2.jpg"),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 3.0,
                    end: 3.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Expanded(
              child: Text(
                "Ehab Mohammed Gamal ZAki",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      );

  Widget buildChatItem(BuildContext context) =>
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage("assets/person1.jpg"),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 3.0,
                  end: 3.0,
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                      onPressed: () {
                       Navigator.of(context).pushReplacementNamed("home_screen");
                      },
                      child: const Text(
                        'Ehab Mohammed Gamal ZAki',style: TextStyle(color: Colors.black),maxLines: 1,overflow: TextOverflow.ellipsis,
                      ),
                    ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children:
                  [
                    Expanded(
                      child: Text(
                        "Hello My Name Ehab Mohamed And My Best Friend Hossam",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text(
                      '02:00 pm',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );