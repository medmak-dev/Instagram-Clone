import 'package:flutter/material.dart';
import 'package:instagram_clone/main.dart';
import 'package:instagram_clone/pages/profilePage.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
     int  _selectedIndex=0;

List<Widget> _widgetOption=[
  MyHomePage(),
  Text("Search"),
  Text("Ajouter"),
  Text("Favorie"),
  ProfilPage(),
];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    // resizeToAvoidBottomInset: true,
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:  BottomNavigationBar(
      
        items: const<BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Center( child:Icon(Icons.home,size: 30,color: Colors.grey ),),
         title: Text("Home")  ,
      ),
      BottomNavigationBarItem(
          icon: Center( child:Icon( Icons.search,size: 30, color: Colors.grey )),
         title: Text("Search")  ,
      ),
       BottomNavigationBarItem(
          icon: Center( child:Icon(Icons.add_box,size: 30, color: Colors.grey )),
         title: Text("publier") ,
      ),
      BottomNavigationBarItem(
          icon: Center( child:Icon(Icons.favorite_border,size: 30, color: Colors.grey )),
         title: Text("favirie")  ,
      ),
      BottomNavigationBarItem(
          icon: Center( child:Icon(Icons.person_outline,size: 30, color: Colors.grey )),
         title: Text("profile")  ,
      ),
      
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTap,
    ),
    );
  }

 /* Widget getFooter() {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
        color: Colors.grey[100],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
          children: List.generate(4, (index) {
            return Row (
              children: [
          IconButton(
            icon: Icon(Icons.home),
            iconSize: 33,
            color: Colors.black,
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 33,
            color: Colors.black,
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.add_box),
            iconSize: 35,
            color: Colors.black,
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            iconSize: 33,
            color: Colors.black,
            onPressed: null,
          ),
          InkWell(
            child: Container(
                height: 33,
                width: 33,
                // color: Colors.black,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300], width: 1.2),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/avatar/avatar.jpg"),
                      fit: BoxFit.cover),
                )),
            onTap: () {},
          )
        ],
            );
          }),

      ),
    );
  }*/
}
