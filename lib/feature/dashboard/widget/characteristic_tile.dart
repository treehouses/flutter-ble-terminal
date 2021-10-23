import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

import 'descriptor_tile.dart';

class CharacteristicTile extends StatelessWidget {
  final BluetoothCharacteristic characteristic;
  final List<DescriptorTile> descriptorTiles;
  final VoidCallback? onReadPressed;
  final Function(String)? onWritePressed;
  final VoidCallback? onNotificationPressed;
  TextEditingController inputController = new TextEditingController();

  CharacteristicTile({Key? key,
    required this.characteristic,
    required this.descriptorTiles,
    this.onReadPressed,
    this.onWritePressed,
    this.onNotificationPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<int>>(
      stream: characteristic.value,
      initialData: characteristic.lastValue,
      builder: (c, snapshot) {
        final value = snapshot.data;
        print(characteristic.serviceUuid.toString());
        // if(characteristic.serviceUuid.toString() != "6e400001-b5a3-f393-e0a9-e50e24dcca9e"){
        //
        // }
        return ExpansionTile(
          title: ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Characteristic'),
                Text(
                    '${characteristic.serviceUuid.toString().toUpperCase()}',
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(
                        color: Theme
                            .of(context)
                            .textTheme
                            .caption
                            ?.color))
              ],
            ),
            subtitle: Row(children: [
              Expanded(
                flex: 1, child: TextField(controller: inputController,),),
              IconButton(
                icon: Icon(Icons.send,
                    color: Theme
                        .of(context)
                        .iconTheme
                        .color
                        ?.withOpacity(0.5)),
                onPressed: (){
                  onWritePressed!(inputController.text);
                },
              ),
            ],),
            contentPadding: EdgeInsets.all(0.0),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.file_download,
                  color: Theme
                      .of(context)
                      .iconTheme
                      .color
                      ?.withOpacity(0.5),
                ),
                onPressed: onReadPressed,
              ),
              IconButton(
                icon: Icon(Icons.file_upload,
                    color: Theme
                        .of(context)
                        .iconTheme
                        .color
                        ?.withOpacity(0.5)),
                onPressed: (){
                  onWritePressed!("treeehouses version");
                },
              ),
              IconButton(
                icon: Icon(
                    characteristic.isNotifying
                        ? Icons.sync_disabled
                        : Icons.sync,
                    color: Theme
                        .of(context)
                        .iconTheme
                        .color
                        ?.withOpacity(0.5)),
                onPressed: onNotificationPressed,
              )
            ],
          ),
          children: descriptorTiles,
        );
      },
    );
  }
}