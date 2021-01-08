import 'package:a_commerce/constants.dart';
import 'package:flutter/material.dart';

class CustomActionBar extends StatelessWidget {
  final String title;
  final bool hasBackArrrow;
  final bool hasTitle;
  final bool hasBackground;

  CustomActionBar(
      {this.title, this.hasBackArrrow, this.hasTitle, this.hasBackground});

  @override
  Widget build(BuildContext context) {
    bool _hasBackArrow = hasBackArrrow ?? false;
    bool _hasTitle = hasTitle ?? true;
    bool _hasBackground = hasBackground ?? true;

    return Container(
      decoration: BoxDecoration(
          gradient: _hasBackground
              ? LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0),
                  ],
                  begin: Alignment(0, 0),
                  end: Alignment(0, 1),
                )
              : null),
      padding: EdgeInsets.only(
        top: 56.0,
        left: 24.0,
        right: 24.0,
        bottom: 42.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (_hasBackArrow)
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black,
                ),
                child: Image(
                  width: 16,
                  height: 16,
                  color: Colors.white,
                  image: AssetImage("assets/images/back_arrow.png"),
                ),
              ),
            ),
          if (_hasTitle)
            Text(
              title ?? "actionBar",
              style: Constants.boldHeading,
            ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.black,
              ),
              alignment: Alignment.center,
              child: Text(
                "0",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
