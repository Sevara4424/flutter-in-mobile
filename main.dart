import 'package:flutter/material.dart';
void main() => runApp(const AlertDialogExampleApp());

class AlertDialogExampleApp extends StatelessWidget {
  const AlertDialogExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 124, 29, 141),
          brightness: Brightness.dark,
          ),
          ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutterda AlertDialog vidjeti bilan ishlash'),
          backgroundColor: const Color.fromARGB(255, 104, 10, 121),
          ),
        backgroundColor: Colors.white,
        body: const Center(
          child: DialogExample(),
        ),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('15-variant'),
          content: const Text('AlertDialog vidjeti bilan ishlaysizmi?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Yoq'),
              child: const Text('Yoq'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Ha'),
              child: const Text('Ha'),
            ),
          ],
        ),
      ),
      child: const Text('2-amaliy ish'),
      
    );
  }
}


