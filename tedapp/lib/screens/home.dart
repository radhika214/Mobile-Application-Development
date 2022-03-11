import 'package:flutter/material.dart';
import 'package:tedapp/model/post.dart';
import 'package:tedapp/repo/post_operations.dart';


class home extends StatelessWidget {
 List<Post> posts = [];
  home() {
    PostOperations opr = PostOperations.getInstance();
    posts = opr.getPosts();
  }

    _getText(
      {required String text,
      Color color = Colors.white,
      FontWeight fontWeight = FontWeight.normal,
      double fontsize = 14}) {
    return Text(text,
        style: TextStyle(
            color: color, fontWeight: fontWeight, fontSize: fontsize));
  }
 List<Widget> _tedPost(Size deviceSize) {
    List<Widget> postList = posts.map((post) {
      return Card(
        child: Stack(
          children: [
            Image.network(post.imageURL),
            Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _getText(
                          text: post.author,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontsize: 14),
                  //     _getText(
                  //         text: post.name,
                  //         color: Colors.white,
                  //         fontWeight: FontWeight.w900,
                  //         fontsize: 16),
                  //   ],
                  // ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                      child:_getText(
                          text: post.time,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontsize: 12),
                      )
                    ],
                  )
                ],
              ),
            
                 ] ),
             ) ],
        ),
      );
    }).toList();
    return postList;
  }
  _getAppBar(){
    return   AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              
              Icons.more_vert, color: Colors.grey,),
          )],
         
          title: Row(children: [Text('TED',style: TextStyle(color: Colors.red),), SizedBox(width: 5,), Text('Newest',style: TextStyle(color: Colors.red)), Icon(Icons.arrow_drop_down, color: Colors.redAccent,)
          ],),
    );
  }
  TextStyle _getStyle(Color color, {double fontSize=14}){
    return TextStyle(color: color, fontSize: fontSize);
  }
  @override
  Widget build(BuildContext context) {
   Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _getAppBar(),
         body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu_rounded, color: Colors.red),
                  Icon(Icons.play_lesson, color: Colors.grey),
                  Icon(Icons.headphones, color: Colors.grey),
                  Icon(Icons.lightbulb_outline, color: Colors.grey),
                  Icon(Icons.supervised_user_circle, color: Colors.grey)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
            child: Column(
              children: _tedPost(deviceSize),
            ),
          ),
        ]),
      ),
  floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: Icon(Icons.search),
  ));
  
  }
 
}
 