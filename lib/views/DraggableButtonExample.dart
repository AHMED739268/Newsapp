
import 'package:flutter/material.dart';

class DraggableButtonExample extends StatefulWidget {
  @override
  _DraggableButtonExampleState createState() => _DraggableButtonExampleState();
}

class _DraggableButtonExampleState extends State<DraggableButtonExample> {
  Offset position = Offset(100, 100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable Button Example'),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: position.dx,
            top: position.dy,
            child: Draggable(
              feedback: Material(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Center(
                    child: Icon(
                      Icons.touch_app,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              childWhenDragging: Container(),
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                setState(() {
                  position = offset;
                });
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Icon(
                    Icons.touch_app,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}