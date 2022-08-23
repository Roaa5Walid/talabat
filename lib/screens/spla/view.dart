import 'package:flutter/material.dart';

import '../home/view.dart';

class Spla extends StatefulWidget {
  const Spla({Key? key}) : super(key: key);

  @override
  State<Spla> createState() => _SplaState();
}

class _SplaState extends State<Spla> {
  Future Delay() async{
    await Future.delayed(const Duration(seconds: 4));
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Home()));
  }
  @override
  void initState(){
    super.initState();
    Delay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE93946),
      body:Center(child: Image.asset("images/talabatey.png",width: 200,height: 200,)),

    );
  }
}
