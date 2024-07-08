import "package:flutter/material.dart";

class MyComponent extends StatefulWidget {
  const MyComponent({super.key, required this.content1});
  final String content1;
  @override
  State<StatefulWidget> createState() => _MyCompenentState();
}

class _MyCompenentState extends State<MyComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.content1),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Text('$index',
                style: TextStyle(color: Colors.amber[900], fontSize: 14));
          }),
    );
  }
}
