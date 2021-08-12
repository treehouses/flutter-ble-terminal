import 'package:flutter/material.dart';

class NetWorkCard extends StatefulWidget {
  final int cardNum;
  final Color color;
  final IconData icon;
  final String type;
  NetWorkCard(this.cardNum, this.color, this.icon, this.type);
  @override
  State<NetWorkCard> createState() => _NetWorkCard();
}

class _NetWorkCard extends State<NetWorkCard> {
  static int networkMode = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() => networkMode = widget.cardNum),
      child: Card(
          elevation: (networkMode == widget.cardNum ? 50: 0),
          shadowColor: (networkMode == widget.cardNum ? widget.color: null),
          color: widget.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: SizedBox(
              width: 125,
              height: 125,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(widget.icon, color: Colors.white, size: 50),
                  Text(widget.type, style: TextStyle(fontSize: 20, color: Colors.white))
                ],
              )
          )
      )
    );
  }
}