import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home:new MyStatelessWidget()

   ));
}


class MyStatelessWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){


    return Scaffold(
    appBar: new AppBar(title: new Text("hi omar")),

    body: new Container(
      padding: new EdgeInsets.all(2.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new myCard(
              title: new Text("I love flutter",style: new TextStyle(fontSize: 15.0)),
              icon: new Icon(Icons.favorite,size: 35.0,color: Colors.redAccent,)
          ),
          new myCard(
              title: new Text("I love kotlin",style: new TextStyle(fontSize: 15.0)),
              icon: new Icon(Icons.add_a_photo,size: 35.0,color: Colors.blueGrey,)
          ),
          new myCard(
              title: new Text("I love java",style: new TextStyle(fontSize: 15.0)),
              icon: new Icon(Icons.remove_circle,size: 35.0,color: Colors.amber,)
          )

        ]
      )
    )




    );
  }

}


class myCard extends StatelessWidget{

  myCard({this.title,this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {

    return new Container(
      padding: new EdgeInsets.only(bottom: 20.0),
      child: new Card(
        child: new Container(
          padding: new EdgeInsets.all(20.0),
            child: new Column(

            children: <Widget>[
            this.icon,
            this.title
          ]
        )
        )
      )
    );
  }
}

