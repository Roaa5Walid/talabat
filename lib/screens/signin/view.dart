import 'dart:convert';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:talabat/dataa.dart';
import 'package:talabat/screens/apit/view.dart';
import '../home/view.dart';
import 'package:http/http.dart';

var nameController=TextEditingController();
var phoneController=TextEditingController();

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  var litems = ["1","2","Third","4"];
  bool chick = false;
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
        // if the name in mySql == name you inter
         if((list1[i]["name"])==name&&list1[i]["phone"]==phone){
           Navigator.of(context).push(MaterialPageRoute(
               builder: (context) => Apit()));
         }
         else
           Navigator.of(context).push(MaterialPageRoute(
               builder: (context) => Home()));
      });

    }
    print(litems);


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child:
          Padding(
            padding: const EdgeInsets.all(20),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount:1,
              itemBuilder: (BuildContext context, int i) {
                return
                  Column(
                    children: [
                      Image.asset("images/talabatt.png",width: 200,height: 200,),
                      SizedBox(height: 20,),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child:
                        TextField(
                          controller: nameController,
                          maxLength: 15,
                          textAlign: TextAlign.right,
                          cursorColor: Colors.red,
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            counterStyle: TextStyle(color: Colors.red,fontSize: 12,),
                            fillColor: Colors.grey.withOpacity(0.3), filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),

                            hintText: "??????????",


                          ),
                        ),
                      ),

                      SizedBox(height: 20,),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child:  TextField(
                          controller: phoneController,
                          maxLength: 11,
                          textAlign: TextAlign.right,
                          cursorColor: Colors.red,
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            counterStyle: TextStyle(color: Colors.red,fontSize: 12,),
                            fillColor: Colors.grey.withOpacity(0.3), filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),

                            hintText: "?????? ????????????",


                          ),
                        ),),


                      Padding(
                        padding: const EdgeInsets.all(20),
                        child:GestureDetector(
                            child:   Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.arrow_drop_down),
                                Text("?????? ?????? ???????? ?????? ?????????????? ???????? ?????? ",style: TextStyle(fontSize: 20,color: Colors.red),),
                              ],
                            ),

                            onTap: () {
                              setState(() {
                                chick =! chick;
                              });
                            }

                        ),

                      ),

                      Visibility(
                        visible: chick,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child:
                          TextField(
                            textAlign: TextAlign.right,
                            cursorColor: Colors.red,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              counterStyle: TextStyle(color: Colors.red.shade900,fontSize: 12,),
                              fillColor: Colors.grey.withOpacity(0.3), filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),

                              hintText: "?????? ????????????????",


                            ),
                          ),),
                      ),


                      SizedBox(height: 40,),
                      SizedBox(
                        width:MediaQuery.of(context).size.width,
                        height: 50 ,// <-- match-parent
                        child: ElevatedButton(
                          onPressed: (){

                            setState(() {
                              name=nameController.text;
                              phone=phoneController.text;
                            });
                            getData();
                          },
                          child: Text("???????????? ",style: TextStyle(fontSize: 20,color: Colors.white),),
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                              primary: Colors.red.shade700,
                              // padding: EdgeInsets.symmetric(horizontal:200, vertical: 20),
                              side: BorderSide(
                                width: 0,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(20,)
                              )),

                        ),
                      )






                    ],
                  );
              },
            ),

          ),
        ),


    );
  }
}
