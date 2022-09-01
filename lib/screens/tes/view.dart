import 'package:flutter/material.dart';
class Tes extends StatefulWidget {
  const Tes({Key? key}) : super(key: key);

  @override
  State<Tes> createState() => _TesState();
}

class _TesState extends State<Tes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                navrow("images/r1.jpg","مطاعم"),
                navrow("images/brk.jpg","البقاله"),
              ],
            ),

          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              navrow("images/r1.jpg","مطاعم"),
              navrow("images/brk.jpg","البقاله"),
              navrow("images/brk.jpg","البقاله"),
            ],
          ),
        ],
      ),
    );
  }
  Padding navrow(String rimg, String rname){
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        margin: EdgeInsetsDirectional.all(10),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child:
        Column(
          children: [
            Container(
              width: 400, height:100,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 3, spreadRadius: 4, offset: Offset(2,4))],
                  borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),

              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height:60, width:60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.deepPurple,width: 2),
                          image: DecorationImage(
                              image: AssetImage(rimg),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    Text(rname,style: TextStyle(fontSize: 16,color: Colors.black),)
                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
