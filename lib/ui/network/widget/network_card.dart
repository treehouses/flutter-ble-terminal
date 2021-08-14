import 'package:flutter/material.dart';
import 'package:treehousesble/ui/widgets/gradient_card.dart';

class NetWorkCard extends StatefulWidget {
  final int cardNum;
  final Color primaryColor;
  final Color secondaryColor;
  final IconData icon;
  final String type;
  final Function setNetworkMode;
  final int networkMode;
  NetWorkCard(this.cardNum, this.primaryColor, this.secondaryColor, this.icon, this.type, this.setNetworkMode, this.networkMode);
  @override
  State<NetWorkCard> createState() => _NetWorkCard();
}

class _NetWorkCard extends State<NetWorkCard> {
  @override
  Widget build(BuildContext context) {
    return GradientCard(
        widget.primaryColor,
        widget.secondaryColor,
        widget.icon,
        widget.type,
        widget.networkMode == widget.cardNum,
        () => widget.setNetworkMode(widget.cardNum)
    );
  }
}