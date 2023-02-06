import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen
    extends StatelessWidget {
  const AlertScreen(
      {Key? key})
      : super(key: key);

  void displayDialogIos(BuildContext context){

    showCupertinoDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Title'),
          content:  Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Alert Text'),
                SizedBox( height: 10),
                FlutterLogo( size: 100,)
              ],
              ),
              actions: [
                TextButton(
                  onPressed: () =>  Navigator.pop(context), 
                  child: const Text('Cancel', style: TextStyle(color: Colors.red))
                  ),
                  TextButton(
                  onPressed: () =>  Navigator.pop(context), 
                  child: const Text('ok', style: TextStyle(color: Colors.green))
                  ),
              ],
        );
      } );
  }

  void displayDialogAndroid(BuildContext context){

      showDialog(
        barrierDismissible: false,
        context: context, 
        builder: (BuildContext context) { 
          return  AlertDialog(
            elevation: 5,
            title: const Text('Title'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            content:  Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Alert Text'),
                SizedBox( height: 10),
                FlutterLogo( size: 100,)
              ],
              ),
              actions: [
                TextButton(
                  onPressed: () =>  Navigator.pop(context), 
                  child: const Text('Cancel')
                  ),
                  TextButton(
                  onPressed: () =>  Navigator.pop(context), 
                  child: const Text('ok')
                  ),
              ],
          );
         }
        );
  }

  @override
  Widget
      build(BuildContext context) {
    return Scaffold(
      
      body: Center(
         child: ElevatedButton(
          //onPressed: () => displayDialogAndroid(context), 
          onPressed: () => Platform.isAndroid ? 
                            displayDialogAndroid(context):
                            displayDialogIos(context), 
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Text('Show Alert', style: TextStyle(fontSize: 17)),
          )),
      ),
      floatingActionButton: FloatingActionButton(       
        child: const Icon( Icons.close),
        onPressed: () { 
          Navigator.pop(context);
         },
        
        ),
    );
  }
}
