import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatefulWidget {
  CustomAppBar({
    super.key,
    required this.imagePath,
    required this.icon,
    required this.top,
    required this.right,
    required this.left,
    required this.bottom,
    required this.navDistenation,
    this.iconPressed,
  });
  final String imagePath;
  final IconData icon;
  final IconData? iconPressed;
  final double top, right, left, bottom;
  bool _isFav = false;
  final Widget navDistenation;
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  void _toggleFavorite() {
    setState(() {
      widget._isFav = !widget._isFav;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                fit: BoxFit.fitHeight,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: widget.left,
              right: widget.right,
              top: widget.top,
              bottom: widget.bottom),
          child: Row(
            children: [
              IconButton(
                icon: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xffffffff),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    )),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => widget.navDistenation));
                },
              ),
              const Spacer(),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xffffffff),
                ),
                child: IconButton(
                  icon: widget._isFav
                      ? Icon(
                          widget.iconPressed,
                          color: Colors.red,
                        )
                      : Icon(
                          widget.icon,
                          color: Colors.black,
                        ),
                  onPressed: () {
                    _toggleFavorite();
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
