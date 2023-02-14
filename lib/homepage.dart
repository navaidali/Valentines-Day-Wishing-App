import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String like = "";
  Future<bool> onLikeButtonTapped(bool isLiked) async{
    if(isLiked){
      like="Happy Valentine's Day";
  }
    else{
      like="";
    }
    return !isLiked;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text("Press me with love", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),),
            SizedBox(height: 50,),
            LikeButton(
              size: 150,
              circleColor:
              CircleColor(start: Colors.orange, end: Colors.yellow),
            ),
            SizedBox(height: 50,),
            Text("Happy Valentines Day :)", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 25),),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
