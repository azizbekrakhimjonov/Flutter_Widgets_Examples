import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class CPActionSheet extends StatefulWidget {
  const CPActionSheet({super.key});

  @override
  CPActionSheetState createState() => CPActionSheetState();
}

class CPActionSheetState extends State<CPActionSheet> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        theme: CupertinoThemeData(brightness: (isDark) ? Brightness.dark : Brightness.light),
        home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: const Text("CupertinoActionSheet"),
            trailing: IconButton(
              onPressed: updateBrightness,
              icon: const Icon(Icons.lightbulb_circle),),
          ),
          child: Center(
              child: CupertinoButton(
                onPressed: () => showActionSheet(context),
                child: const Text('Montrer une action sheet Cupertino', style: TextStyle(color: Colors.blue),),
              )
          ),
        )
    );
  }

  showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('Title'),
        message: const Text('Message'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Action par défaut'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Action'),
          ),
          CupertinoActionSheetAction(
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Action 'Destructive'"),
          ),
        ],
      ),
    );
  }

  updateBrightness() {
    setState(() {
      isDark = !isDark;
    });
  }

}
