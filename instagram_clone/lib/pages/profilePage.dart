import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_clone/Widgets/TextCustom.dart';
import 'package:instagram_clone/classe/user_profile.dart';

class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  UserProfile user1 = new UserProfile("Medmak Dev", 460, 798, 17);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: new Column(
          children: [
            Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 20, left: 5),
                margin: EdgeInsets.only(top: 5),
                //color: Colors.grey[100],

                child: Row(
                  children: [
                    new Container(
                      height: 50,
                      padding: EdgeInsets.all(12),
                      width: MediaQuery.of(context).size.width - 60,
                      // color: Colors.black,
                      child: new TextCustom(
                        user1.userName,
                        color: Colors.grey[800],
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    new Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          // color: Colors.black
                          ),
                      child: Center(
                        child: IconButton(
                            icon: Icon(Icons.menu),
                            iconSize: 30,
                            color: Colors.grey[100],
                            onPressed: null),
                      ),
                    )
                  ],
                )),
            Expanded(
                child: new SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          elevation: 6,
                          child: Container(
                            height: 280,
                            decoration: BoxDecoration(
                              color: Colors.grey[200]),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 82,
                                      height: 82,
                                      padding: EdgeInsets.all(1),
                                      //color: Colors.indigoAccent,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/avatar/avatar.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.all(5),
                                        height: 120,
                                        //padding: EdgeInsets.symmetric(vertical:5),
                                        decoration: BoxDecoration(
                                         // color: Colors.grey,
                                        ),

                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            infoUser(info:user1.publication.toString(),description:"Publication"),
                                             infoUser(info:user1.follower.toString(),description:"Abonnés"),
                                             infoUser(info:user1.followin.toString(),description:"Abonnements"),
                                               
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 55,
                                  width:340,
                                  padding: EdgeInsets.only(left:5),
                                // color: Colors.grey,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      TextCustom(user1.userName,spacing: 1,fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.grey[500],),
                                   TextCustom("medmak.dev@gmail.com",spacing: 1.8,fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.blue[700],),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width:340,
                                  padding: EdgeInsets.only(left:5),
                                   //  color: Colors.pinkAccent[100],
                                 child: Center(
                                   child:RaisedButton(
                                     onPressed: (){},
                                     child:TextCustom("Modifier Profil",spacing: 1.8,fontSize: 17.0,fontWeight: FontWeight.bold,color: Colors.grey[700],),
                                     elevation: 10.0,
                                     
                                   ),
                               
                                 ),

                                ),
                              ],
                            ),
                          ),
                        ),
                      
                        Card(
                          elevation: 12,
                          
                          child: Container(
                            height: 400,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(color: Colors.grey[100]),
                            child: Column(
                          
                              children: [
                                Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    
                                    Container(
                                      height: 60,
                                      width: 160,
                                      
                                      decoration: BoxDecoration(
                                    //    color: Colors.grey[300],
                                     border: Border(bottom:BorderSide(color: Colors.black,width: 1.5))

                                      ),
                                        child: IconButton(icon: Icon(Icons.grid_on),iconSize: 30,color: Colors.grey[600], onPressed: null),
                                    ),
                                    SizedBox(width: 3,),
                                    Container(
                                      height: 60,
                                      width: 160,
                                   //   color: Colors.grey[300],
                                      child: IconButton(icon: Icon(Icons.contacts),iconSize: 30,color: Colors.grey[300], onPressed: null),
                                    )
                                  ],
                                ),
        
                                
                              ],
                            ),
                          ),
                        ),
                      ],
                    )))
          ],
        ));
  }

  Widget infoUser({info,description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.all(1),
        //color: Colors.grey,
          width: 84,
          height: 60,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextCustom(info,
                    color: Colors.black,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold),
                Center(
                  child: TextCustom(
                     description,
                    color: Colors.grey[600],
                    fontSize: 13.0,
                  //  fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
        ),
      ],
    );
  }
}
