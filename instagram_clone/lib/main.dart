import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/TextCustom.dart';




void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(

        primarySwatch: Colors.blue,
        fontFamily: 'sans-serif-thin',

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
    backgroundColor: Colors.grey[100],
      appBar: AppBar(
        
         backgroundColor: Colors.grey[100],
         leading: new Icon(Icons.camera_alt,size:28,color:Colors.grey[800]),
        title: new Text("Instagram",
        textAlign:TextAlign.center,
    
        
      style: new TextStyle(
        color: Colors.grey[900],
        fontWeight: FontWeight.bold,
        fontSize: 25.0,
        letterSpacing: 1.80,
        // fontFamily: 'Mystical',
     ) ),
          //title: textCustom("Instagram",textAlign:TextAlign.center,spacing: 2.0,fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.grey[900] ),
          actions: [
            IconButton(icon: new Icon(Icons.send,size:28,color:Colors.grey[800]), onPressed: null)
          ],
          
         ),
         
      body: new SingleChildScrollView(
         child: new Column(
            children: [
              new Container(
           
           height: 140,
           padding: EdgeInsets.only(top: 1,bottom: 1,),
           width: double.infinity,
           decoration:BoxDecoration(
           //  color:Colors.grey[500],
        
           ),
           child: ListView(
             scrollDirection: Axis.horizontal,
             
             children: [
               makeNewStory(userName: "Votre Story",userImage: 'assets/images/avatar/avatar.jpg'),
               makeStorie(userName: "Alex_Francklin",userImage: "assets/images/profil1.jpeg"),
                makeStorie(userName: "Nathan_NJ",userImage: "assets/images/profil2.jpeg"),
                 makeStorie(userName: "Aleandra_Talla",userImage: "assets/images/profil3.jpeg"),
                  makeStorie(userName: "Lea_Michel",userImage: "assets/images/profil4.jpeg"),
                   makeStorie(userName: "Stela_Dior",userImage: "assets/images/profil5.jpeg"),
                   makeStorie(userName: "Vannelle_Njoum",userImage: "assets/images/profil6.jpeg"),
                   makeStorie(userName: "Gaelle_Fokam",userImage: "assets/images/feuille.jpg"),
         
             ],
           ),
         ),
       post(userName:"Nathan_Njoumie",userAvatar: "assets/images/profil2.jpeg",userLocalisation: "Malibu (Californie)",nombreDeCommentaire: 319,temp: "Il ya 2 Heures",postImage:"assets/images/oasis.jpg" ),
          post(userName:"Aleandra_Talla",userAvatar: "assets/images/profil5.jpeg",userLocalisation: "New-York",nombreDeCommentaire: 497,temp: "Il ya 3 Jours",postImage:"assets/images/toure.jpg") ,
            post(userName:"Alex_Francklin",userAvatar:  "assets/images/profil1.jpeg",userLocalisation: "Bagangté (Cameroun)",nombreDeCommentaire: 106,temp: "Il ya 2 Heures",postImage:"assets/images/elephan.jpg") ,
            post(userName:"Lea_Michael",userAvatar: "assets/images/profil4.jpeg",userLocalisation: "Paris (France)",nombreDeCommentaire: 397,temp: "Il ya 1 Jours",postImage:"assets/images/pc.jpg") ,
            post(userName:"Stela_Dior",userAvatar: "assets/images/profil5.jpeg",userLocalisation: "Douala(Cameroun)",nombreDeCommentaire: 220,temp: "Il ya 3 Jours",postImage:"assets/images/savane.jpeg") ,
          
            ],
         ),
      ),
      
    // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget makeStorie({userName,userImage}){
    return new Expanded(
      
       child: new Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Container(
             padding: EdgeInsets.all(1),
             margin: EdgeInsets.only(right:1.0),

                 height:100,
                 width: 89,
                 //color: Colors.white,
                 child: new Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     new Container(
                       padding: EdgeInsets.all(2),
                       height: 70,
                       width: 71,
                       
                      // color: Colors.greenAccent,
                       decoration: BoxDecoration(
                         border: Border.all(color:Colors.pink,width: 2.3),
                        // borderRadius: BorderRadius.circular(100),
                         shape: BoxShape.circle
                         
                       
                     ),
                     child: Container(
                         decoration: BoxDecoration(
                         //border: Border.all(color:Colors.grey[800],width: 1),
                        // borderRadius: BorderRadius.circular(100),
                        shape: BoxShape.circle,
                         image: DecorationImage(
                           
                           image: AssetImage(userImage),
                           fit: BoxFit.cover,
                           
                           
                       ),
                       
                     ),
                     ),
                     ),
                     SizedBox(height: 3,),
                     new TextCustom(userName,fontWeight: FontWeight.bold,color: Colors.grey[900],fontSize: 10.0,),
                     
                   ],
                 ),
               ),
         ],
       ),
     
    );
  }

  Widget makeNewStory({userName,userImage}){
     return new Expanded(
      
       child: new Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Container(
             padding: EdgeInsets.all(1),
             margin: EdgeInsets.only(right:1.0),

                 height:100,
                 width: 89,
                 //color: Colors.white,
                 child: new Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     new Container(
                       padding: EdgeInsets.all(2),
                       height: 70,
                       width: 71,
                       
                      // color: Colors.greenAccent,
                       decoration: BoxDecoration(
                         //border: Border.all(color:Colors.pink,width: 2.3),
                        // borderRadius: BorderRadius.circular(100),
                         shape: BoxShape.circle
                         
                       
                     ),
                     child: Container(
                         decoration: BoxDecoration(
                         //border: Border.all(color:Colors.grey[800],width: 1),
                        // borderRadius: BorderRadius.circular(100),
                        shape: BoxShape.circle,
                         image: DecorationImage(
                           
                           image: AssetImage(userImage),
                           fit: BoxFit.cover,
                           
                           
                       ),
                       
                     ),
                     ),
                     ),
                     SizedBox(height: 3,),
                     new TextCustom(userName,fontWeight: FontWeight.bold,color: Colors.grey[800],fontSize: 10.0,),
                     
                   ],
                 ),
               ),
         ],
       ),
     
    );
  }

  Widget post({userName,userLocalisation,userAvatar,postImage,nombreDeCommentaire,temp}){
    double largeur= MediaQuery.of(context).size.width;
    
    return new Card(
      elevation :8,
      child: new Container(

     width:largeur,
        child:new Column(
         mainAxisAlignment: MainAxisAlignment.start,
          children: [
           new Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
                       new Container(
              width:300,
              height:60 ,
             padding: EdgeInsets.only(left:6,right: 9),
              //color: Colors.grey[200],
              child: new Row(
                   
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  new Container(
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.all(1.8),
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     border:Border.all( color: Colors.pink,width: 2),
                     
                        
                    ),
                    child: new Container(
                      
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        image: DecorationImage(
                          image:AssetImage(userAvatar),
                          fit: BoxFit.cover,
                           ),
                           shape: BoxShape.circle,
                      ),
                      
                    ),
                  ),
                  new Column(
                    children: [
                      new Container(
                    padding: EdgeInsets.all(8),
                    child: new TextCustom(userName,color: Colors.grey[900],fontSize: 13.0,fontWeight: FontWeight.bold,spacing: 1,),
                  ),
                   new TextCustom(userLocalisation,spacing: 2,fontSize: 8.0,color: Colors.grey[600],fontWeight: FontWeight.bold,),

                    ],
                  )
                   
                
                ],
              ),
                    
            ),
            Expanded(
              child: Container(
                 //color: Colors.orangeAccent,
                 padding: EdgeInsets.all(6),
                 height: 50,
                 width: 50,
                 child: new IconButton(
                   icon: Icon(Icons.more_vert,size: 25,color: Colors.grey[800],), onPressed: (){}),
                   ))
             ],
           ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               new Container(
             //color:Colors.grey,
             height: 440,
             
             //width: 200,
             decoration: BoxDecoration(
               
                 image: DecorationImage(
                   image: AssetImage(postImage),
                   fit: BoxFit.cover
                   )
             ),
           ),
           SizedBox(height: 3,),
           new Container(
            // height: 50,
             padding: EdgeInsets.all(3),
             //color: Colors.pink,
             child: new Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Row(
                   children: [
                    makeIcone(iconeData: Icons.favorite_border,couleur: Colors.pink[500]), 
                     SizedBox(width:4),
                       makeIcone(iconeData: Icons.comment,couleur: Colors.pink[500]),
                     SizedBox(width:4),
                       makeIcone(iconeData: Icons.send,couleur: Colors.pink[500]),
                   ],
                 ),
                   makeIcone(iconeData: Icons.bookmark_border,couleur: Colors.grey[700]),
               ],
             ),
           ),
           makeZoneCommentaire(nbreDeCommentaire: nombreDeCommentaire,time: temp),

            ],
          )
          ],
        ) ,
      ),
    );
  }

  Widget makeIcone({iconeData,couleur}){
  
    return   Container(
                       height: 40,
                      width: 40,
                       //color: Colors.white,
                        child: Center(
                          child: IconButton(icon: Icon(iconeData,size: 33,color: couleur),
                           onPressed: (){
                              setState(() {
                               // favoriCheck=!favoriCheck;// recupere le boolean passer en param
                              });
                          }),),
                     );
  }

  Widget makeZoneCommentaire({nbreDeCommentaire,time}){
    return Container(
       height: 112,//concerne la zone en dessous de la photos du post
       padding: EdgeInsets.only(left:1,right:1),
       margin: EdgeInsets.only(left:5,right:5),
        //    width: 40,
      decoration: BoxDecoration(
      // color: Colors.grey[200],
      ),
      child: new Column(
        children: [
          new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            Container(
                       //height: 40,
                      width: 70,
                      padding: EdgeInsets.all(1),
                       //color: Colors.white,
                       child: Row(
                           crossAxisAlignment:CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                            Container(
                       height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        border: Border.all(color:Colors.white,width:2),
                       shape: BoxShape.circle,
                    // color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage("assets/images/profil4.jpeg"),
                      fit:BoxFit.cover
                      )
                      ),

                      
                     ),
                     Transform.translate(
                       offset:Offset(-8, 0),
                     child:Container(
                       height: 28,
                      width: 28,
                    decoration: BoxDecoration(
                      border: Border.all(color:Colors.white,width:2),
                     shape: BoxShape.circle,
                      //   color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/images/profil2.jpeg"),
                        fit:BoxFit.cover
                        )
                    ),

                      
                     ), ),
                         ],
                       ),
                      
                     ),
                     SizedBox(width: 2,),
                     Expanded(
                       child: Container(
                       height: 40,
                      width: 40,
                     //  color: Colors.white,
                      child: new Center(  
                            child: new TextCustom("Aimé par vindiesel_officiel et des milliers d'autre personnes",color:Colors.grey[900],fontSize:11.0,fontWeight: FontWeight.bold),
                       
                      )
                     ),),
                     
          ],
      ),
                  SizedBox(height: 3,),
                    Expanded(
                       child: Container(
                      width: 300,
                    //   color: Colors.white,  
                            child: new TextCustom("Voir les $nbreDeCommentaire commentaires",spacing: 1.4,color:Colors.grey[600],fontSize:13.0,fontWeight: FontWeight.bold,),

                     ),),
                      SizedBox(height: 4,),
                      makeCommentaire(timeString: time)
                     
        ],
      ),
    );
  }

  Widget makeCommentaire({timeString}){
    
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
              padding: EdgeInsets.all(15),
             
              width:30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
               
                image: DecorationImage(
                  image: AssetImage("assets/images/avatar/avatar.jpg"),
                  fit: BoxFit.cover,
                  )
              ),
            ),
            new Container(
              margin: EdgeInsets.all(3),
              child: new TextCustom(timeString,spacing: 2,fontSize: 8.0,color: Colors.grey[600],fontWeight: FontWeight.bold,),
            )
              ],
            ),
            
            Expanded(
           child: Container(
             padding: EdgeInsets.all(1),
             margin: EdgeInsets.all(2),
             
              height: 40,
          decoration:  BoxDecoration(
            //color:Colors.grey[300],
            borderRadius: BorderRadius.circular(40),),
            child:TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "  Ajouter un commentaire....",
                hintStyle: TextStyle(color: Colors.grey[600],fontSize: 19.0,fontStyle: FontStyle.italic),
                border: InputBorder.none,
               suffix: Icon(Icons.add_circle_outline,size: 20,color: Colors.grey[400],),
                )
            ),
               
          ),
        ),
        ],
        );

      }


}

