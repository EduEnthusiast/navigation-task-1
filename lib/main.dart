import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      home: const Screen1(),
    );
  }
}
bool isVideocall=true;
class Screen1 extends StatefulWidget {
  const Screen1({super.key});
  @override
  State<Screen1> createState() => _Screen1State();
}
class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 243, 243),
      appBar: AppBar(
      leading: const Icon(Icons.arrow_back_sharp),
      backgroundColor: const Color.fromARGB(255, 245, 243, 243),
      title: const Text('Lesson History',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
      ),
      ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      isVideocall=true;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                     ),
                     child:  Center(
                       child: Text('Video call',
                       style: TextStyle(   
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: isVideocall? Colors.amber:Colors.grey,
                       ),
                       ),
                     ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                       isVideocall=false;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                     ),
                     child:  Center(
                       child: Text('Audio call',
                       style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: isVideocall? Colors.grey:Colors.amber,
                       ),
                       ),
                     ),
                  ),
                ),
               ],
              ),
              const SizedBox(height: 20,),
                Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 100,
                      width: 410,
                      decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                     ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/image_1.png',height: 100,width: 100,),
                      const Column(
                        children: [
                          Text('Stephen N',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          ),
                           SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Video call',
                              style:TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                              ),
                              SizedBox(width: 15,),
                              Text('.'),
                               SizedBox(width: 15,),
                              Text('Scheduled',
                              style: TextStyle(
                              color: Colors.blue,
                                fontWeight: FontWeight.bold
                              ),
                              ), 
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Text('Meet at 11 am',
                              style: TextStyle(
                              color: Colors.blue,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                            ],
                          ),
                        ],
                      ), 
                    ],
                  ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    color: Color.fromARGB(255, 245, 243, 243),
                                  ),
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                    Center(
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(100)),
                                color: Colors.amber,
                              ),
                              height: 60,
                              width: 60,
                              child: const Icon(
                                Icons.doorbell,
                                size: 30,
                                color: Colors.white,
                            ),
                            
                            ),
                          ),
                           const Text("notification",
                           style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),),
                        ],
                      ),
                    ),
                     Column(
                      children: [
                        Center(
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              color: Colors.amber,
                            ),
                            height: 60,
                            width: 60,
                            child: const Icon(
                              Icons.message,
                              size: 30,
                              color: Colors.white,
                          ),),
                        ),
                         const Text("message",
                         style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                      ],
                    ),
                     Column(
                      children: [
                        Center(
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              color: Colors.amber,
                            ),
                            height: 60,
                            width: 60,
                            child: const Icon(
                              Icons.favorite,
                              size: 30,
                              color: Colors.white,
                            
                          ),),
                        ),
                         const Text("favourite",
                         style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                       
                      ],
                    ),
                  ],
                ),
               ),
                ],
              ),
            ),

const Padding(
  padding: EdgeInsets.all(10),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text('An accomplished educator with 5 years of experience\nin the field of flutter development for the future \nof the upcoming youth.',
      style: TextStyle(
        fontWeight: FontWeight.bold
        ),
      ),
      Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Text('Class details :',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
                ),
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Text('Monday, 27 March 2024',
                style: TextStyle(
              fontWeight: FontWeight.bold
              ),
                ),
                SizedBox(height: 2,),
                Text('Tutorial Timing : 11:am',
                
                style: TextStyle(
              fontWeight: FontWeight.bold
              ),),
                SizedBox(height: 2,),
                Text('Total timing : 30 minutes',
                
                style: TextStyle(
              fontWeight: FontWeight.bold
              ),),
                SizedBox(height: 2,),
                Text('Course duration : 3 months',
                
                style: TextStyle(
              fontWeight: FontWeight.bold
              ),),
                
              ],
            ),
          ],
        ),
      ),
    ],
  ),
),

         ],
        ),
        ),
      ),
    );
  }
}

