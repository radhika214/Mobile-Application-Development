import 'package:bookmyshow/model/post.dart';
import 'package:bookmyshow/repo/post_operations.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  
   List<Post> posts = [];
  Home() {
    PostOperations opr = PostOperations.getInstance();
    posts = opr.getPosts();}
 
    TextStyle _getStyle(Color color, {double fontSize = 14}) {
    return TextStyle(color: color, fontSize: fontSize);
  }
 List<Widget> _prepareTedPost(Size deviceSize) {
    List<Widget> list = posts.map((post) {
      return Stack(children: [
        Card(
          
          child: Column(
            children: [
              Image(
                image: NetworkImage(post.imageURL),
                width: double.infinity,
                height: 265,
                fit: BoxFit.cover,
              ),
              ListTile(
                title: Text(
                  post.movieTitle,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Row(children: [
                  Text(
                    post.language + "  ",
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                  for (var item in post.tags)
                    Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5),
                          borderRadius: const BorderRadius.all(Radius.circular(5.0) //
                              ),
                        ),
                        //             <--- BoxDecoration here
                        child: Text(
                          item,
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ))
                ]),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Perform some action
                  },
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(253, 47, 83, 1)),
                  child: const Text(
                    'BOOK',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 3.5,
          left: 3,
          child: Container(
            padding: const EdgeInsets.fromLTRB(5, 5, 6, 4),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(155, 191, 145, 1),
                  blurRadius: 2.0,
                  spreadRadius: 0.5,
                  offset: Offset(2.0, 2.0),
                )
              ],
              color: const Color.fromRGBO(78, 217, 101, 1),
              border: Border.all(
                color: const Color.fromARGB(225, 255, 255, 255),
              ),
              // borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Text('New',
                style: _getStyle(const Color.fromARGB(255, 255, 255, 255))),
          ),
        ),
        Positioned(
            width: deviceSize.width - 45,
            bottom: 90,
            left: 12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(153, 12, 12, 12),
                        border: Border.all(
                            color: const Color.fromARGB(225, 255, 255, 255),
                            width: 2),
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        post.ageRestriction,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(153, 12, 12, 12),
                    border: Border.all(),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Row(children: [
                        const Icon(
                          Icons.favorite_rounded,
                          size: 20,
                          color: Color.fromRGBO(253, 47, 83, 1),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          post.percentage.toString() + '%',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                      ]),
                      Text(post.votes.toString() + " votes ",
                          style: _getStyle(const Color.fromARGB(255, 255, 255, 255)))
                    ],
                  ),
                )
              ],
            ))
      ]);
    }).toList();
    return list;
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize=MediaQuery.of (context).size;
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,

        title: Center(
          child: Container(
            height: 40,
            width: deviceSize.width,

            child: Stack(children: [
              Positioned(
               left: 110,
                child: Container(
                  height: 35,
                  width: deviceSize.width/3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), 
                     color: Color.fromARGB(255, 81, 81, 97),
                  ),
                 
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('COMING SOON',style: TextStyle(fontSize: 14),),
                  )),
              ),
              Container(
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                   color: Color.fromARGB(255, 255, 66, 89),
                ),
               

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('NOW SHOWING',style: TextStyle(fontSize: 14),),
                ))
            ]),
          ),
        ),
            leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(icon: Icon(Icons.location_pin), onPressed: () {}),
        ],
        backgroundColor: Color.fromARGB(255, 49, 49, 65),

      ),
        body: Scaffold(
         appBar: AppBar(
            // toolbarHeight: 70,
             backgroundColor: Colors.white ,
             title: Row(children: [
            FlatButton(

                  onPressed: () {},

                  child: Row(

                    children: [

                      Icon(Icons.language,

                          color: Color.fromARGB(255, 29, 236, 243)),

                      SizedBox(width: 15),

                      Text("All Languages",

                          style: TextStyle(

                              color: Color.fromARGB(255, 108, 108, 108),

                              fontWeight: FontWeight.w500,

                              fontSize: 16))

                    ],

                  )),

              Text(

                "|",

                style: TextStyle(

                    fontSize: 30, color: Color.fromARGB(225, 236, 236, 236)),

              ),

              FlatButton(

                  onPressed: () {},

                  child: Row(children: [

                    Icon(Icons.chair, color: Colors.redAccent),

                    SizedBox(width: 15),

                    Text("Cinemas",

                        style: TextStyle(

                            color: Color.fromARGB(255, 108, 108, 108),

                            fontWeight: FontWeight.w500,

                            fontSize: 16))

                  ]))
             ])
         
        
          ),
          body:  Stack(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                margin: const EdgeInsets.only(top: 40),
                child: SingleChildScrollView(
                    child: Column(children: _prepareTedPost(deviceSize))),
              )),
          
        ],
      ),
          bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Just For You"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "My Profile"),
        ],
      ),
      
      ),
    ));
  }
}
