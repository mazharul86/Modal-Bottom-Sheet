import 'package:flutter/material.dart';

class Btmst extends StatefulWidget {
  const Btmst({Key? key}) : super(key: key);

  @override
  State<Btmst> createState() => _BtmstState();
}

class _BtmstState extends State<Btmst> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              FloatingActionButton.extended(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 250,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.alarm),
                                  title: Text("One"),
                                  trailing: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Ok"),
                                  ),
                                ),
                                ListTile(
                                  leading: Icon(Icons.alarm),
                                  title: Text("Two"),
                                  trailing: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Ok"),
                                  ),
                                ),
                                ListTile(
                                  leading: Icon(Icons.alarm),
                                  title: Text("Three"),
                                  trailing: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Ok"),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  label: Text("Bottom Sheet"))
            ],
          ),
        ),
      ),
    );
  }
}
