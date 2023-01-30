import 'package:flutter/material.dart';

class AlertScreen
    extends StatelessWidget {
  const AlertScreen(
      {Key? key})
      : super(key: key);

  @override
  Widget
      build(BuildContext context) {
    return Scaffold(
      
      body: Center(
         child: ElevatedButton(
          onPressed: () {}, 
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
