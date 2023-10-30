import 'package:flutter/material.dart';

class DialogFlutter extends StatefulWidget {
  const DialogFlutter({super.key});

  @override
  State<DialogFlutter> createState() => _DialogFlutterState();
}

class _DialogFlutterState extends State<DialogFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Flutter'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  await showDialog<void>(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Info'),
                          content: const SingleChildScrollView(
                            child: ListBody(children: [
                              Text('fianodol menyukai pipis anak kecil')
                            ]),
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Catat itu kowalski'))
                          ],
                        );
                      });
                },
                child: const Text('Open Dialog')),
            ElevatedButton(
                onPressed: () async {
                  await showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.all(20),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text('Your Order Info'),
                                const SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue),
                                    child: const Text('Baiklah'))
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: const Text('Open BottomSheet')),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      backgroundColor: Colors.blue,
                      content: Text('Zayuda Babi')));
                },
                child: const Text('Open Snackbar'))
          ],
        ),
      ),
    );
  }
}
