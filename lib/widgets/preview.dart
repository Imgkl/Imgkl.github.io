import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rubber/rubber.dart';

class Preview extends StatefulWidget {
  final currentIndex;
  final color;
  final textColor;

  const Preview({Key key, this.currentIndex, this.color, this.textColor})
      : super(key: key);

  @override
  _PreviewState createState() => _PreviewState();
}

class _PreviewState extends State<Preview> with SingleTickerProviderStateMixin {
  RubberAnimationController _controller;
  bool isExpanded = false;

  List<String> titles = [
    'Sai Gokula Krishnan',
    'RUDE',
    "Moofies",
    "Quotes.",
    "Yep/Nope",
    "Pixie",
    "CommuniTV"
  ];

  List<String> subtitles = [
    'I Code Stuff.',
    'Light-hearted mean notifications in hour intrevals.',
    "Movie searching never been easier",
    'Everyone needs motivation sometimes.\n Around 60K+ Quotes',
    'Too confused to take desicions?\nA Fun little app to nudge you in the right direction',
    'When you photograph people in color, you photograph their clothes.\nBut when you photograph people in Black and white, \nyou photograph their souls!',
    'Hand curated top rated TV shows and details of where to watch '
  ];

  @override
  void initState() {
    _controller = RubberAnimationController(
        vsync: this,
        dismissable: false,
        lowerBoundValue: AnimationControllerValue(pixel: 0),
        upperBoundValue: AnimationControllerValue(pixel: 650),
        duration: Duration(milliseconds: 200));
    super.initState();
  }

  void _expand() {
    if (isExpanded) {
      _controller.launchTo(_controller.value, _controller.lowerBound,
          velocity: 2);
    } else {
      _controller.launchTo(_controller.value, _controller.upperBound,
          velocity: 2);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: RubberBottomSheet(
          lowerLayer: _getLowerLayer(),
          upperLayer: _getUpperLayer(),
          menuLayer: _getMenuLayer(),
          animationController: _controller,
        ),
      ),
      onTap: () {
        _expand();
        setState(() {
          isExpanded = !isExpanded;
        });
      },
    );
  }

  Widget _getLowerLayer() {
    return Container();
  }

  Widget _getUpperLayer() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.white),
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("${titles[widget.currentIndex]}",
                          style: Theme.of(context).textTheme.headline2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${subtitles[widget.currentIndex]}",
                        style: Theme.of(context).textTheme.headline6),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: widget.color,
              ),
            )
          ],
        )
      ],
    );
  }

  Widget _getMenuLayer() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              FontAwesomeIcons.arrowUp,
              color: Colors.white,
            ),
            Container(
              height: 30,
              width: 100,
              child: Center(
                child: Text(
                  "Preview",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
