import 'package:flutter/material.dart';

class NetWorkCard extends StatefulWidget {
  final int cardNum;
  final Color color;
  final IconData icon;
  final String type;
  final Function setNetworkMode;
  final int networkMode;
  NetWorkCard(this.cardNum, this.color, this.icon, this.type, this.setNetworkMode, this.networkMode);
  @override
  State<NetWorkCard> createState() => _NetWorkCard();
}

class _NetWorkCard extends State<NetWorkCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.setNetworkMode(widget.cardNum),
      child: Card(
          elevation: (widget.networkMode == widget.cardNum ? 50: 0),
          shadowColor: (widget.networkMode == widget.cardNum ? widget.color: null),
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