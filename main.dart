import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr/qr.dart';
import 'package:qr_flutter/qr_flutter.dart';

int count = 0;
void main()
{

  runApp(MaterialApp(
  title: 'first flutter app',
  home: MyApp(),
  ));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //////////////////////////////code goes here
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'navigation menu',
          onPressed: null,
        ),
        title: Text('axis set'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
        backgroundColor: Colors.indigo,
      ),

      body: Center(
        child: UpdateBody(),
      ),



      ///////////////////////////////code ends here
    );
  }
}



class UpdateBody extends StatefulWidget{

  UpdateBodyState createState() => UpdateBodyState();
}

class UpdateBodyState extends State{

  String tabby1 = 'overcoat';
  double $x1 = 0.0;
  double $y1= 0.0;
  setAlign(int id)
  {
    setState(() {
      if(id == 1)
      {
        $x1 += 0.1;
      }
      else if(id == 2)
      {
        $x1 -= 0.1;
      }
      else if(id == 3)
      {
        $y1 += 0.1;
      }
      else if(id == 4)
      {
        $y1 -= 0.1;
      }

    });
    print('adn');

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Center( child: Column(

        children: <Widget>[

          Container(

            decoration: BoxDecoration(
              color: Colors.blueGrey,
              border: Border.all(color: Colors.black, width: 2,),
              borderRadius: BorderRadius.circular(2)

            ),
            width: 400,
            height: 200,
            //grid goes here
            child: IconButton(
              icon: QrImage(
                data: "Hello",
                version: QrVersions.auto,
                size: 100,
                gapless: true,
              ),
              tooltip: 'flakes',
              onPressed: null,
              alignment: Alignment($x1,$y1),
            ),
            margin: EdgeInsets.fromLTRB(20, 2, 20, 0),
          ),
          Expanded(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(

                  child: IconButton(
                    icon: Icon(Icons.arrow_upward),
                    tooltip: 'school',
                    onPressed: () => setAlign(4),
                    iconSize: 100,

                  ),
                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),

          ),
          Expanded(


            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(

                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    tooltip: 'school',
                    onPressed: () => setAlign(2),
                    iconSize: 100,
                  ),
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.fromLTRB(20, 20, 100, 20),
                ),
                Container(

                  child: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    tooltip: 'school',
                    onPressed: () => setAlign(1),
                    iconSize: 100,
                  ),
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),

                ),

              ],
            ),


          ),
          Expanded(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: IconButton(
                    icon: Icon(Icons.arrow_downward),
                    tooltip: 'school',
                    onPressed: ()=> setAlign(3),
                    iconSize: 100,
                  ),
                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),

          ),

        ],

      ),



      ),

    );
  }

}


/*
class UpdateText extends StatefulWidget{

  UpdateTextState createState() => UpdateTextState();

}

class UpdateTextState extends State{

  String textHolder = 'Old Sample Text ...';
  String a = 'a';
  String b = 'b';
  changeText(){

    setState(() {
      if(count%2== 0)
        {
          textHolder = a;
        }
      else{
        textHolder = b;
      }
      count+=1;
    });

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: Center(child: Column(
        children: <Widget>[
          Expanded(

            //padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Container(
              child: Text('$textHolder',

              style: TextStyle(
                  fontSize: 21,
                  backgroundColor: Colors.greenAccent,
              ),),
              color: Colors.red,
              alignment: Alignment(0.0,0.0),
            ),
             flex: 1,
          ),
          Expanded(

            //padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Container(
              child: Text('$textHolder',

                style: TextStyle(
                  fontSize: 21,
                ),),
              color: Colors.lightBlueAccent,
              alignment: Alignment(0.0,0.0),
              constraints: BoxConstraints.expand()
            ),
            flex: 1,
          ),



      RaisedButton(
        onPressed: () => changeText(),
        child: Text('Click here to Change text'),
        textColor: Colors.white,
        color: Colors.green,
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      ),
    ]))
    ) ;


  }

}*/

