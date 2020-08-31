import 'package:flutter/material.dart';

class AnimatingCircles extends StatefulWidget {
  const AnimatingCircles({
    Key key,
    @required Animation animation,
    @required this.width,
    @required Animation size,
    this.image,
    this.sizeFator,
    this.color,
  })  : _animation = animation,
        _size = size,
        super(key: key);

  final Animation _animation;
  final double width;
  final Animation _size;
  final double sizeFator;
  final String image;
  final Color color;

  @override
  _AnimatingCirclesState createState() => _AnimatingCirclesState();
}

class _AnimatingCirclesState extends State<AnimatingCircles> {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: widget._animation.value,
      child: OverflowBox(
        maxHeight: widget.width * 2,
        maxWidth: widget.width * 2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(widget.width * 2.0),
          child: Container(
            height: widget.width * widget.sizeFator,
            width: widget.width * widget.sizeFator,
            foregroundDecoration: BoxDecoration(color: widget.color),
            child: OverflowBox(
              maxHeight: widget.width * 2,
              maxWidth: widget.width * 2,
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
                height: widget.width * widget._size.value,
                width: widget.width * widget._size.value,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

