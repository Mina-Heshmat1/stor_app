import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  final Function(bool isFavorite)? onPressed;
  final bool isFavorite;

  const FavoriteButton({
    Key? key,
    required this.isFavorite,
    this.onPressed,
  }) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPressed?.call(!widget.isFavorite);
      },
      child: Icon(
        widget.isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,

      ),
    );
  }
}