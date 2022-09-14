import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../dataa.dart';
var c_nameController=TextEditingController();
var c_phoneController=TextEditingController();
var c_unversyController=TextEditingController();
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  Future Add_data() async {
    var url = Uri.parse("http://localhost:4000/add");
    Map<String, String> headers = {"Content-type": "application/json"};

    String json = '{"name": "$nameup",'
        ' "name": "$nameup",'
        ' "phone": "$phoneup",'
        ' "unversy": "$unversyup"}';
    // make POST request
    Response response = await post(url, headers: headers, body: json);
    // check the status code for the result
    int statusCode = response.statusCode;
    // this API passes back the id of the new item added to the body
    String body1 = response.body;
    var data = jsonDecode(body1);
    print(data);
    var res = data["code"];

    if (res == null) {}
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
                        controller: c_nameController,
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

                          hintText: "الاسم",


                        ),
                      ),
                    ),

                    SizedBox(height: 20,),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child:  TextField(
                        controller: c_phoneController,
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

                          hintText: "رقم الهاتف",


                        ),
                      ),),


                    Visibility(
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child:
                        TextField(
                          controller: c_unversyController,
                          textAlign: TextAlign.right,
                          cursorColor: Colors.red,
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            counterStyle: TextStyle(color: Colors.red.shade900,fontSize: 12,),
                            fillColor: Colors.grey.withOpacity(0.3), filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),

                            hintText: "ايميل",


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
                           nameup=c_nameController.text;
                           phoneup=c_phoneController.text;
                           unversyup=c_unversyController.text;
                           Add_data();
                          });
                          //getData();
                        },
                        child: Text("التالي ",style: TextStyle(fontSize: 20,color: Colors.white),),
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
