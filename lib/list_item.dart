import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travler/detailed_view.dart';

class ListItem extends StatelessWidget {
  final String _assetPath;
  final String _city;
  final String _description;
  final double _starRating;

  ListItem(this._assetPath, this._city, this._description, this._starRating);

  

  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
      onTap: () => print(
        Navigator.push(context, new MaterialPageRoute(builder: (context) => DetailedView(assetpath: _assetPath, city: _city, description: _description,)  ))
      ), // handle your onTap here
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 15.0),
        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
        height: 115,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color.fromRGBO(255, 255, 255, 1.0),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  _assetPath,
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              )),
              SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    _city,
                    style: TextStyle(fontWeight: FontWeight.bold,
                                     fontSize: 20),
                  ),

                  SizedBox(height: 5,),
                  Text(
                    _description,
                    style: TextStyle(fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  RatingBar(
                    initialRating: _starRating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 15,
                    itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.flight,
                      color: Colors.indigoAccent,
                    ),
                    onRatingUpdate: (rating) {},
                  )
                ],
              )
            ]
            )

      ),
    ),
        
            );
  }
}



