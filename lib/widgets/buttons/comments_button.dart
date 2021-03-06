import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:owmflutter/utils/utils.dart';

class CommentsButton extends StatelessWidget {
  final num count;
  final VoidCallback onTap;

  CommentsButton({@required this.count, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 6.0),
              child: Icon(
                FontAwesomeIcons.comment,
                size: 16.0,
                color: Theme.of(context).textTheme.caption.color,
              ),
            ),
            Text(
              count.toString() +
                  " " +
                  Utils.polishPlural(
                    count: count,
                    first: "komentarz",
                    many: "komentarzy",
                    other: "komentarze",
                  ),
              style: TextStyle(
                fontSize: 14.0,
                color: Theme.of(context).textTheme.caption.color,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
