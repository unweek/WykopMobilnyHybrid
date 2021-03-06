import 'package:flutter/material.dart';
import 'package:owmflutter/utils/utils.dart';
import 'package:owmflutter/widgets/widgets.dart';
import 'package:owmflutter/screens/screens.dart';
import 'package:share/share.dart';
import 'package:owmflutter/model/model.dart';

class EntryFooterWidget extends StatelessWidget {
  final EntryModel entry;
  final bool isClickable;

  EntryFooterWidget(this.entry, this.isClickable);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FavoriteButton(
            isFavorite: entry.isFavorite,
            onTap: () => entry.favoriteToggle(),
          ),
          CommentsButton(
            count: entry.commentsCount,
            onTap: () {
              if (isClickable) {
                Navigator.push(
                  context,
                  Utils.getPageTransition(EntryScreen(model: entry)),
                );
              }
            },
          ),
          ShareButton(
            onTap: () =>
                Share.share("https://www.wykop.pl/wpis/" + entry.id.toString()),
          ),
        ],
      ),
    );
  }
}
