import 'package:flutter/material.dart';

import '../home/view.dart';
class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child:
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
              Image.asset("images/talabatt.png",width: 200,height: 200,),
                SizedBox(height: 20,),
                Directionality(
                    textDirection: TextDirection.rtl,
                    child:
                    TextField(
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


                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.arrow_drop_down),
                          Text("اذا كان لديك رمز مشاركةز اضغط هنا ",style: TextStyle(fontSize: 20,color: Colors.red),),
                        ],
                      ),
                    ),

                Directionality(
                  textDirection: TextDirection.rtl,
                  child:  TextField(
                    textAlign: TextAlign.right,
                    cursorColor: Colors.red,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      counterStyle: TextStyle(color: Colors.red.shade900,fontSize: 12,),
                      fillColor: Colors.grey.withOpacity(0.3), filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),

                      hintText: "رمز المشاركة",


                    ),
                  ),),
                  SizedBox(height: 40,),
                SizedBox(
                    width:MediaQuery.of(context).size.width,
                    height: 50 ,// <-- match-parent
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Home()));
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
            ),
          ),
        ),


    );
  }
}
