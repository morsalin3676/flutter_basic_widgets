import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Morsalin',
        home: Home(),
      debugShowCheckedModeBanner: false,
    );

  }

}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.green,
      appBar:

      AppBar(
        leading: Icon(Icons.home, color: Colors.white,),
        title:Text('Home', style: TextStyle(
          color: Colors.white,),

        ),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('are eyou sure ?'),
            backgroundColor: Colors.red,
              duration: Duration(seconds: 1),
            ));
          }, icon: Icon(Icons.add))
        ],
      ),

      body:

      Center(
        child: Container(

          alignment: Alignment.center,
          width: 200,
          height: 200,

          child: Text('i am a container',style: TextStyle( color: Colors.white),),
          decoration: BoxDecoration(
              color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image:AssetImage('lib/image/dog.jpeg') ,
                fit: BoxFit.cover,
              
            ),
              boxShadow:  [ BoxShadow(
                color: Colors.white.withOpacity(0.1),
                spreadRadius: 16,
                blurRadius: 1,
                offset: Offset(0, 3)
              )]
          ),

        )


      /* child: Row(
          children: [
            Text(' Hi i am a morsalin ', style: TextStyle(color: Colors.pink),),
            Text(' i love this program ', style: TextStyle(color: Colors.white),),
            Text('my dream softwore engineer',style: TextStyle(color: Colors.amberAccent),)
          ],
        ),*/
       /* child: Column(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      width: 2,
                      color: Colors.white
                    )
                  )

                ),
                onPressed: (){

                }, child: Text('Button')),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.amber,
                textStyle: TextStyle(fontSize: 24)
              ),
              onPressed: (){}, child: Text('TextButton'),),
            IconButton(onPressed: (){}, icon: Icon(
              Icons.add_circle,
              color: Colors.blueAccent,
            )),
           /* InkWell(
              onTap:(){
                print('on tap detected');
              } ,
              onDoubleTap: (){
                print('on double tap detected');
              },
              onLongPress: (){
                print('onLong press detected');
              }


            )*/

            Padding(
                padding:EdgeInsets.all(20),
              child:
              TextField(

                style: TextStyle(
                  fontSize: 16,),
                decoration: InputDecoration(

                  fillColor: Colors.black,
                    filled: true,
                    prefixIcon: Icon(Icons.add),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelText: 'Name',
                    labelStyle: TextStyle(
                        color: Colors.white
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 4, color: Colors.white),
                        borderRadius: BorderRadius.circular(4)
                    ),
                    hintText: 'enter your name',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )

                ),


              ),

            ),

          ],
        ),



        /*child: Text('my name is morsalin ', style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w900,
          backgroundColor: Colors.green,
          color: Colors.red

        ),)*/
        //child: Icon(Icons.android, size: 85, color: Colors.red,),
        //child: Image.asset('lib/image/mosa.jpg', width: 300, height: 300,)
        //child:  Image.network("https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg", width: 400, height: 500,)

        */

      ),
    );
  }

}
