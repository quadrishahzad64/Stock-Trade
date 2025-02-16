import 'package:flutter/material.dart';

class MyCont extends StatelessWidget {
  final String text; // Add a parameter for the text
  final String imgUrl;
  const MyCont({super.key, required this.text,required this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.grey.shade500,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade900,
            offset: Offset(5.0, 5.0),
            blurRadius: 16.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Stack(
        children: [ Center(child: Image.asset(imgUrl,width: 80,height: 80,fit: BoxFit.cover,)),
          Align(alignment: Alignment.bottomCenter,
            child: Text(text,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ]
      ),
    );
  }
}

class MyContCir extends StatelessWidget {
  final String text; // Add a parameter for the text
  final String imgUrl;
  const MyContCir({super.key, required this.text,required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade500,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade900,
            offset: Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Stack(
      children: [
        Center(child: ClipOval(child: Image.asset(imgUrl,width: 80,height: 80,fit: BoxFit.cover,))),
        Align(alignment: Alignment.bottomCenter,
          child: Text(text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ]
    ),
    );
  }
}

class MyContTri extends StatelessWidget {
  final String text; // Add a parameter for the text
  final String imgUrl;
  const MyContTri({super.key, required this.text,required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade900,
            offset: Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-4.0, -4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: ClipPath(
        clipper: TriangleClipper(),
        child: Container(
          width: 100,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.grey.shade500,
          ),
          child: Stack(
              children:
              [
                  Center(child: Image.asset(imgUrl,width: 80,height: 80,fit: BoxFit.cover,)),
                   Center(
                   child: Align(alignment: Alignment.bottomCenter,
                     child: Text(text,
                     style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                                     ),
                                   ),
                   ),
                 ),
              ]
          ),
        ),
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    // Start at the top center
    path.moveTo(size.width / 2, 0);
    // Draw a line to the bottom right
    path.lineTo(size.width, size.height);
    // Draw a line to the bottom left
    path.lineTo(0, size.height);
    // Close the path to complete the triangle
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}