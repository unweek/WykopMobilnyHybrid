import 'package:flutter/material.dart';
import 'package:owmflutter/models/models.dart';
import 'package:owmflutter/widgets/widgets.dart';
import 'package:owmflutter/screens/screens.dart';
import 'package:owmflutter/utils/utils.dart';
import 'package:share/share.dart';

class LinkFooterWidget extends StatelessWidget {
  final String linkTitle;
  final int linkId;
  final bool isClickable;
  LinkFooterWidget({this.linkTitle, this.linkId, this.isClickable});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FavoriteButton(
            isFavorite: false,
            onTap: () {},
          ),
          CommentsButton(
            count: 15,
            onTap: () {
              if (isClickable) {
                Navigator.push(
                  context,
                  Utils.getPageTransition(
                    LinkScreen(
                      linkId: linkId,
                    ),
                  ),
                );
              }
            },
          ),
          ShareButton(onTap: () {
            Share.share(this.linkTitle +
                "\nhttps://www.wykop.pl/link/" +
                linkId.toString());
          }),
        ],
      ),
    );
  }
}
