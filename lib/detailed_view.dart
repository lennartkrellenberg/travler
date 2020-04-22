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

         Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.start,
           
            
        children: <Widget>[
          Text(city),
          Text(description)
          
          

          
        ])]));
      
    

      
         
    
  }
}



