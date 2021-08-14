import 'package:flutter/material.dart';

class GradientCard extends StatefulWidget {
  final Color primaryColor;
  final Color secondaryColor;
  final IconData icon;
  final String type;
  final bool highlighted;
  final Function? func;
  GradientCard(this.primaryColor, this.secondaryColor, this.icon, this.type, this.highlighted, [this.func]);
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
          width: 125,
          height: 125,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                widget.primaryColor,
                widget.secondaryColor
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
              Icon(widget.icon, color: Colors.white, size: 50),
              Text(widget.type, style: TextStyle(fontSize: 20, color: Colors.white))
            ],
          )
        )
    );
  }
}