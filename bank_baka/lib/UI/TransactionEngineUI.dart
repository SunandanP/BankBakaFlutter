import 'package:flutter/material.dart';

class TransactionEngineUI extends StatefulWidget {
  const TransactionEngineUI({super.key});

  @override
  State<TransactionEngineUI> createState() => _TransactionEngineUIState();
}

class _TransactionEngineUIState extends State<TransactionEngineUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  child: TextField(),
                  width: double.infinity,
                ),
                Container(
                  child: TextField(),
                  width: double.infinity,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
