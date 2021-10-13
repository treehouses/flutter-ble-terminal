import 'package:flutter/material.dart';

class GradientCard extends StatefulWidget {
  final List<Color> colors;
  final List<double> sizes;
  final IconData icon;
  final String type;
  final bool highlighted;
  final Function? func;
  //Colors takes two colors for gradient, sizes takes two numbers: width and height
  GradientCard(this.colors, this.sizes, this.icon, this.type, {this.highlighted = false, this.func});
  @override
  State<GradientCard> createState() => _GradientCard();
}

class _GradientCard extends State<GradientCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => widget.func!(),
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: widget.sizes[0],
          height: widget.sizes[1],
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                widget.colors[0],
                widget.colors[1]
              ]
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              if (widget.highlighted) BoxShadow(
                color: Colors.black,
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(widget.icon, color: Colors.white, size: widget.sizes[1]/2.8),
              Text(widget.type, style: TextStyle(fontSize: 20, color: Colors.white))
            ],
          )
        )
    );
  }
}