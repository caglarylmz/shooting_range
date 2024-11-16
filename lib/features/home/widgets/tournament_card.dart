import 'package:flutter/material.dart';
import 'package:shooting_range/common/components/cards/list_card/list_card.dart';
import 'package:shooting_range/common/components/cards/list_card/list_card_tile.dart';
import 'package:shooting_range/utils/helpers/helper.dart';

import '../model/tournament_card_model.dart';

class TournamentCard extends StatelessWidget {
  const TournamentCard({
    super.key,
    required this.model,
    this.cardWidth,
    this.cardHeight,
  });

  final TournamentCardModel model;
  final double? cardWidth;
  final double? cardHeight;

  @override
  Widget build(BuildContext context) {
    return ListCard(
      title: model.cardTitle,
      width: cardWidth ?? AppHelper.getScreenWidth(context) * 0.7,
      height: cardHeight ?? AppHelper.getScreenHeight(context) * 0.35,
      listView: ListView.separated(
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(height: 2),
        padding: const EdgeInsets.symmetric(vertical: 5),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        primary: false,
        itemCount: model.tournaments.length,
        itemBuilder: (context, index) => Material(
          child: ListCardTile(
              onTap: () => print(index),
              title: model.tournaments[index].name,
              subtitle: model.tournaments[index].date),
        ),
      ),
    );
  }
}
