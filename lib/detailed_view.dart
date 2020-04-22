import 'package:flutter/material.dart';



class DetailedView extends StatelessWidget {

  final String assetpath;
  final String city;
  final String description;

  DetailedView({
    Key key,
    @required this.assetpath,
    this.city, this.description
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,

      ),
      
      body: 
      

      Stack(
    children: <Widget>[
                  Image.asset(assetpath, height: MediaQuery.of(context).size.height * 1.0, width: double.infinity, fit: BoxFit.cover,),

              Container(padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child:   Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.start,
           
            
        children: <Widget>[
          Text(city, style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0),
          fontSize: 48, fontWeight: FontWeight.normal), textAlign: TextAlign.center,),
          Text(description, style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0),
          fontSize: 24, fontWeight: FontWeight.normal,), textAlign: TextAlign.center, )
          
          

          
        ]) 
              )    
       ]));
      
    

      
         
    
  }
}



