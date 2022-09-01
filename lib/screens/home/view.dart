import 'package:flutter/material.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get currentPage => null;
  List<bool> numberTruthList = [true, true, true, true , true, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        elevation: 0.2,
        title:
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Icon(Icons.search,color: Colors.black,size: 35,),
        Row(
          children: [
            Icon(Icons.keyboard_arrow_down,color: Colors.black,size: 35,),
            Text("المنصور",style: TextStyle(fontSize: 20,color: Colors.black),),

          ],
        ),
        Icon(Icons.notifications,color: Colors.black,size: 35,),
      ],),

      ),

      backgroundColor: Colors.white,
      body: Column(
        children: [
        Expanded(
        flex: 2,
        child:
          Container(
           width: double.infinity,
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int i) {
                return
                  Row(
                    children: [
                      navrow("images/r1.jpg","مطاعم"),
                      navrow("images/brk.jpg","الفطور"),
                      navrow("images/da.jpg","دايت"),
                      navrow("images/karaz.jpg","كرازات"),
                      navrow("images/adw.jpg","ادوية"),
                      navrow("images/r1.jpg","مطعم"),

                    ],
                  );
              },
            ),
          ),
        ),

/*
          Expanded(
              flex: 2,
          child:Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                navrow("images/r1.jpg","مطاعم"),
                navrow("images/brk.jpg","الفطور"),
                navrow("images/da.jpg","دايت"),
                navrow("images/karaz.jpg","كرازات"),
                navrow("images/adw.jpg","ادوية"),
                navrow("images/r1.jpg","مطعم"),
              ],
            ),
          ) ,
          ),
*/
Expanded(
    flex: 6,
    child:  ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text("المحلات الاكثر شيوعا",style: TextStyle(fontSize: 22,color: Colors.red),),
                      Container( width: 200 , height: 2,color: Colors.red,)
                    ],
                  ),
                ],
              ),
              Container(
                height: 160,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int i) {
                    return
                      Row(
                        children: [
                          cnavrow("images/r1.jpg","زرزور"),
                          cnavrow("images/brk.jpg","عروس دمشق"),
                          cnavrow("images/da.jpg","دايت"),
                          cnavrow("images/karaz.jpg","كرازات"),
                          cnavrow("images/adw.jpg","ادوية"),
                          cnavrow("images/r1.jpg","مطعم"),

                        ],
                      );
                  },
                ),
              ),
              Container(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.home_outlined),
                          rview("الكل",),
                        ],
                      ),
                    ),
                    rview("خصومات"),
                    rview("يدعم المحفظة"),
                    rview("حصري"),
                    rview("توصيل مجاني"),
                    rview("خصوماتجديد"),
                  ],
                ),
              ) ,

               ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int i) {
                    return
                      Column(
                        children: [
                          navcol("images/brkar.jpg","الحد الادنى للطلب:5,000د.ع","هايزن","منصور","ممتاز","سعر التوصيل:1.000د.ع","بروموكود"),
                          navcol("images/kntak.jpg","الحد الادنى للطلب:5,000د.ع","تشياي هاوس وليز","منصور","جيد جدا","سعر التوصيل:1.500د.ع","حصري"),
                          navcol("images/brkar.jpg","الحد الادنى للطلب:5,000د.ع","بركرز","منصور","ممتاز","سعر التوصيل:1.000د.ع","بروموكود"),
                          navcol("images/r1.jpg","الحد الادنى للطلب:5,000د.ع","باستا","منصور","جيد","سعر التوصيل:1.500د.ع","بروموكود"),


                        ],
                      );
                  },
                ),

            ],
          ),

          /*
          Container(
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                cnavrow("images/r1.jpg","زرزور"),
                cnavrow("images/brk.jpg","عروس دمشق"),
                cnavrow("images/da.jpg","دايت"),
                cnavrow("images/karaz.jpg","كرازات"),
                cnavrow("images/adw.jpg","ادوية"),
                cnavrow("images/r1.jpg","مطعم"),
              ],
            ),
          ),
          */


/*
          navcol("images/brkar.jpg","الحد الادنى للطلب:5,000د.ع","هايزن","منصور","ممتاز","سعر التوصيل:1.000د.ع","بروموكود"),
          navcol("images/kntak.jpg","الحد الادنى للطلب:5,000د.ع","تشياي هاوس وليز","منصور","جيد جدا","سعر التوصيل:1.500د.ع","حصري"),
          navcol("images/brkar.jpg","الحد الادنى للطلب:5,000د.ع","بركرز","منصور","ممتاز","سعر التوصيل:1.000د.ع","بروموكود"),
          navcol("images/r1.jpg","الحد الادنى للطلب:5,000د.ع","باستا","منصور","جيد","سعر التوصيل:1.500د.ع","بروموكود"),
*/
        ],

    )
      )

      ],
    
      ),
        bottomNavigationBar: CircleBottomNavigationBar(
          initialSelection: currentPage,
          circleColor: Colors.purple,
          activeIconColor: Colors.white,
          inactiveIconColor: Colors.black87,
          tabs: [
            TabData(
              icon: Icons.home_outlined,
              title: "Home",
              iconSize: 25,
              onClick: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Home()));

              },
              // Optional
            ),

            TabData(icon: Icons.money,
              onClick: (){


              },
            ),
            TabData(icon: Icons.list_alt),
            TabData(icon: Icons.favorite_border_outlined),
            TabData(
              icon: Icons.person,
              onClick: (){

              },

            ),
          ],
          onTabChangedListener: (int position) {  },

        )
    );

  }
  Padding navrow(String rimg, String rname){
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        margin: EdgeInsetsDirectional.all(10),
        height: 200,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child:
        Column(
          children: [
            Center(
              child: Container(
                height:100, width:100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.deepPurple,width: 2),
                    image: DecorationImage(
                        image: AssetImage(rimg),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(rname,style: TextStyle(fontSize: 16,color: Colors.black),)
          ],
        ),
      ),

    );
  }
  Padding cnavrow(String rimg, String rname){
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        margin: EdgeInsetsDirectional.all(10),
        height: 150,
        width: 250,
        decoration: BoxDecoration(
        ),
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Container(
                height:100, width:300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.deepPurple,width: 2),
                    image: DecorationImage(
                        image: AssetImage(rimg),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            Text(rname,style: TextStyle(fontSize: 22,color: Colors.red,fontWeight: FontWeight.w500),)
          ],
        ),
      ),

    );
  }
  Padding navcol(String rimg, String lname,String rname,String location,String opain,String delv,String promo){
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        margin: EdgeInsetsDirectional.all(5),
        height: 200,
        width: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),

        ),
        child:
        Column(
          children: [
            Center(
              child:
                  Container(
                    child:
                    Stack(
                      children: [
                        Center(
                          child: Container(
                            height:120, width:320,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: Colors.deepPurple,width: 2),
                                image: DecorationImage(
                                    image: AssetImage(rimg),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),
                        Positioned(
                          right: 90, top: 8,
                          child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  color: Colors.white
                                ),
                                width: 80, height: 40,
                                child: Center(child: Text(promo,style: TextStyle(fontSize: 17,color: Colors.red),))),
                           SizedBox(width: 5,),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white
                                ),
                                width: 60, height: 30,
                                child: Center(child:Icon(Icons.delivery_dining,color: Colors.red,), )),


                          ],
                        ), ),

                      ],
                    ),
                  ),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(lname,style: TextStyle(fontSize: 15,color: Colors.black87),),
                Text(rname,style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(delv,style: TextStyle(fontSize: 15,color: Colors.black87),),
                    Icon(Icons.delivery_dining,color: Colors.black87,),
                  ],
                ),
                Row(
                  children: [
                    Text(opain,style: TextStyle(fontSize: 15,color: Colors.black87),),
                    Icon(Icons.tag_faces_sharp,color: Colors.black87,),
                  ],
                ),
                Row(
                  children: [
                    Text(location,style: TextStyle(fontSize: 15,color: Colors.black87),),
                    Icon(Icons.location_on_outlined,color: Colors.black87,),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
  Container rview(String des ,  ){
    return Container(
      child:
      Container(
       margin: EdgeInsetsDirectional.all(5),
        height: 40,
        decoration: BoxDecoration(
            color:Colors.black12,
          borderRadius: BorderRadius.circular(5)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                width: 100,
                child: Center(child: Text(des,style: TextStyle(fontSize: 17,color: Colors.black87),))),
           // Icon(Icons.home_outlined,),
          ],
        ),
      ),
    );
  }

}
