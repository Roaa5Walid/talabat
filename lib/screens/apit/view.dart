import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
class Apit extends StatefulWidget {
  const Apit({Key? key}) : super(key: key);

  @override
  State<Apit> createState() => _ApitState();
}

class _ApitState extends State<Apit> {
 var litems = ["1","2","Third","4"];
 Future getData() async{
   var url=Uri.parse("http://localhost:4000");
   Response response= await get(url);

   String body =response.body;

   List<dynamic> list1=json.decode(body);
   print(list1);
      litems.clear();  //to not print the items in litems just print value in mySql colum(name ,phone,..)
   for (int i=0; i<list1.length; i++){
     litems.add(list1[i]["name"]);
     litems.add(list1[i]["phone"]);
     setState(() {

     });

   }
print(litems);


 }
 void initState(){
   super.initState();
   getData();
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width:MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder
          (
            itemCount: litems.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return   Box("images/talabat.jpg", litems[index]);
            }
        ),
      )
    );
  }
 Container Box(String img,String addres,  ){
   return Container(
     margin: EdgeInsetsDirectional.all(15),
     width: MediaQuery.of(context).size.width,
     height: 120,
     decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         color: Colors.white24,
         boxShadow:[ BoxShadow(
             blurRadius: 4, spreadRadius:4,color: Colors.black.withOpacity(0.1)

         )
         ]
     ),
     child: Row(
       children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 8,bottom: 8),
                 child: Text(addres,style: TextStyle(fontSize: 20,color: Color(0xff00b692)),),
               ),
               Text("Get up to 50% off on these",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
               Text("selected restaurant",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),

             ],
           ),
         ),
         const SizedBox(
           width: 50,
         ),
         CircleAvatar(
           backgroundImage: AssetImage(img),
           radius: 50,
         ),
         /*
          Container(
            height:100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                )
            ),
          ),
           */
         Spacer(),
         Icon(Icons.arrow_forward_ios,color:Color(0xff00b692),)
       ],
     ),
   );
 }
}
