import 'package:flutter/material.dart';

class FavouriteWidget extends StatefulWidget {
  @override
  _FavouriteWidgetState createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  bool _isFavourite = false;
  int _isCount = 64;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            icon: Icon(
              _isFavourite ? Icons.favorite : Icons.favorite_border,
              color: Colors.red[500],
            ),
            onPressed: _toggleFavourite,
          ),
        ),
        SizedBox(
          width: 16,
          child: Container(
            child: Text('$_isCount'),
          ),
        ),
      ],
    );
  }

  void _toggleFavourite() {
    setState(() {
      if (_isFavourite) {
        _isCount -= 1;
        _isFavourite = false;
      } else {
        _isFavourite = true;
        _isCount += 1;
      }
    });
  }
}
