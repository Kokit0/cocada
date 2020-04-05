import 'package:flutter/material.dart';

class RecipeDetails extends StatelessWidget {
  final heroTag, dishName, calCount;

  RecipeDetails({this.heroTag, this.dishName, this.calCount});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: 225.0,
              color: Color(0xFF20D3D2),
            ),
            Positioned(
              left: screenWidth / 2 + 25.0,
              bottom: screenHeight - 175.0,
              child: Hero(
                tag: heroTag,
                child: Container(
                  height: 250.0,
                  width: 250.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(heroTag), fit: BoxFit.cover)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
            Positioned(
              top: 190.0,
              child: Container(
                height: screenHeight - 190.0,
                width: screenWidth,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0))),
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
                      child: Container(
                        width: screenWidth - 40.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              dishName,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 22.0),
                            ),
                            Container(
                              height: 50.0,
                              width: 120.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Color(0xFF20D3D2),
                              ),
                              child: Center(
                                child: Text(
                                  calCount,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14.0,
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 10.0, top: 5.0),
                      child: Text(
                        'Arepa master, it always needs more cheese and coconut, MORE CHEESE',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            color: Color(0xFFBBBBBB)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 10.0, top: 5.0),
                      child: Text(
                        'Ingredients',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w900,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          bottom: 10.0,
                          top: 5.0
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          _buildIngredientRow('Tacos',
                              'assets/plate1.png', 'Prot 20g, Carb 5g', screenWidth),
                          SizedBox(height: 5.0),
                          Container(
                            height: 0.5,
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          SizedBox(height: 5.0),
                          _buildIngredientRow('Arepas',
                              'assets/plate2.png', 'Prot 20g, Carb 5g', screenWidth),
                          SizedBox(height: 5.0),
                          Container(
                            height: 0.5,
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          SizedBox(height: 5.0),
                          _buildIngredientRow(
                              'Salad', 'assets/plate3.png', 'Prot 20g, Carb 5g', screenWidth),
                          SizedBox(height: 5.0),
                          Container(
                            height: 0.5,
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          SizedBox(height: 5.0),
                          _buildIngredientRow(
                              'Burrito', 'assets/plate4.png', 'Prot 20g, Carb 5g', screenWidth),
                          SizedBox(height: 5.0),
                          Container(
                            height: 0.5,
                            color: Colors.grey.withOpacity(0.2),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }

  _buildIngredientRow(
      String title, String imgPath, String quantity, double screenWidth) {
    return Container(
      width: screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              width: 150.0,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath),
                            fit: BoxFit.contain
                        )
                    ),
                  ),
                  SizedBox(width: 25.0),
                  Text(title,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                      ) // color: Color(0xFFBBBBBB)),
                  )
                ],
              )
          ),


          Icon(
            Icons.add,
            color: Color(0xFF7A9BEE),
            size: 20.0,
          ),
          Text('0'),
          SizedBox(width: 20.0),
          Text(
            quantity,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontSize: 14.0,
                color: Color(0xFFBBBBBB)),
          )
        ],
      ),
    );
  }
}