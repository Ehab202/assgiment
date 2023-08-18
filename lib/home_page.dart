import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pushReplacementNamed("MS");
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
        title:Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 33,
              width: 33,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(50),
                image:const DecorationImage(image: AssetImage("assets/person.jpg"),fit: BoxFit.cover)
              ),
            ),
            const SizedBox(
              width: 17,
            ),
            const Text("Person",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 30),),
          ],
        ),
        actions: [
          IconButton(
           onPressed: () {
           }, 
           icon: const Icon(Icons.video_call)),
           IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
           IconButton(onPressed:() {}, icon: const Icon(Icons.more_vert))
        ],
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          height: double.infinity,
          width:double.infinity ,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/background.png"),fit: BoxFit.fill)
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      PersonImageContainer("assets/person1.jpg"),
                    const SizedBox(
                      width: 20,
                    ),
                     PersonMassageContainer("This is the frist massage "),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      PersonMassageContainer("this is the seconde massage"),
                      const SizedBox(
                        width: 20,
                      ),
                      PersonImageContainer("assets/person2.jpg"),
                    ],
                  )
                ],
              ),
                Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: TextField(
                        showCursor: false,
                        style: const TextStyle(
                          color: Colors.white
                        ),
                        decoration: InputDecoration(
                          hintText: "Type a Massage",
                          hintStyle: const TextStyle(
                            color: Colors.white
                          ),
                          contentPadding: const EdgeInsets.symmetric(vertical: 17),
                          labelStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:const BorderSide(
                              color: Colors.grey
                            ) ,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Colors.white
                            ),
                          ),
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.emoji_emotions,
                            color:Colors.white,
                          ),
                          suffixIcon: const Icon(
                            Icons.attach_file,
                            color: Colors.white,
                          ),
                        ),
                      )),
                      const SizedBox(
                        width: 8, 
                      ),
                      Expanded(
                        child: FloatingActionButton(onPressed: () {},
                        backgroundColor: Colors.black54,
                        shape: const CircleBorder(side: BorderSide(
                          color: Colors.white,
                          width: 1,
                        )),
                        child: const Icon(Icons.mic),
                        ),
                      )
                      
                  ],

                ),
              )
            ],
          ),


        ),
    );
  
  }

}
// ignore: non_constant_identifier_names
Container PersonMassageContainer (String massage){
  return Container(
    height:45 ,
    width:230,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      border: Border.all(color: Colors.white,width: 1.3),

    ),
    child: Align(
      alignment: Alignment.center,
      child:
       Text(massage,
       style: const TextStyle(color: Colors.white),)),

  );
}
// ignore: non_constant_identifier_names
Container PersonImageContainer(String path){
  return Container(
    height: 45,
    width: 45,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      image: DecorationImage(
        image:AssetImage(path),fit: BoxFit.cover
        )),
  );
}