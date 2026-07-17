import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
       title: 'Hello World App',
       debugShowCheckedModeBanner: false,
       home: Home()
   );
  }
}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.black54,
         title: Text('Home Screen',
           style: TextStyle(color: Colors.white),
         ),
         leading: Icon(
           Icons.home_filled,
           color: Colors.white,),
         actions: [
           IconButton(onPressed: (){
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
               content: Text('Money has been Transferred'),
               backgroundColor: Colors.green,
               duration: Duration(seconds: 02)
             ));
           }, icon: Icon(Icons.add,color: Colors.white)),
         ],
       ),
     backgroundColor: Colors.black,
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           mainAxisSize: MainAxisSize.min,
           children: [
             Text('Hello World,',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 30 ,
                   fontWeight: FontWeight.w900,
                   color: Colors.white,
             ),
             ),
             Text('I am Sifat.',
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 20 ,
                 fontWeight: FontWeight.w900,
                 color: Colors.white,
               ),
             ),
             Text('Do you know me?',
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 20 ,
                 fontWeight: FontWeight.w900,
                 color: Colors.white,
               ),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               mainAxisSize: MainAxisSize.min,
               children: [
                 Icon(
                     Icons.date_range,
                     size: 30,
                     color: Colors.white,
                 ),
                 Text('17-07-2026',
                   style: TextStyle(
                     fontSize: 10 ,
                     fontWeight: FontWeight.w700,
                     color: Colors.white,
                   ),
                 ),
               ],
             )
           ],
         )
         ),
   );
  }

}
