import 'package:flutter/cupertino.dart';

class UCustomRoundedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height - 40);

    // first Curve
    Offset firstOffset = Offset(40, size.height);
    Offset secondOffset = Offset(size.width / 2, size.height);

    path.quadraticBezierTo(
        firstOffset.dx, firstOffset.dy, secondOffset.dx, secondOffset.dy);

    // second Curve
    Offset firstOffset1 = Offset(size.width-40, size.height);
    Offset secondOffset1 = Offset(size.width , size.height-40);

    path.quadraticBezierTo(
        firstOffset1.dx, firstOffset1.dy, secondOffset1.dx, secondOffset1.dy);

    // bottom right corner

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}